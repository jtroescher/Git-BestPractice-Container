# Makefile for Cosmic Path Optimization

# Variables
PYTHON = python3
TEST_DIR = cosmicpathoptimization
INPUT_FILE = 1.in
EXPECTED_OUTPUT_FILE = cosmicpathoptimization/1.ans
SUBMIT_SCRIPT = submit.py  # Replace with the actual path to submit.py

# Rules
all: unit-test kattis-test style-check type-check

unit-test:
	@echo "Running local unit tests..."
	$(PYTHON) -m unittest discover -s $(TEST_DIR) -p "test_src.py"

kattis-test:
	@echo "Running local Kattis test..."
	$(PYTHON) src.py < $(INPUT_FILE) > output.txt
	diff -u $(EXPECTED_OUTPUT_FILE) output.txt && echo "Test passed" || echo "Test failed"

style-check:
	@echo "Checking code style..."
	flake8 $(TEST_DIR)

style-fix:
	@echo "Fixing code style..."
	autopep8 --in-place --recursive $(TEST_DIR)

type-check:
	@echo "Checking types with mypy..."
	mypy $(TEST_DIR)

# New target for submission
submit:
	@echo "Submitting solution to Kattis..."
	$(PYTHON) $(SUBMIT_SCRIPT) -p cosmicpathoptimization -l "Python 3" src.py

.PHONY: unit-test kattis-test style-check style-fix type-check kattis-submit submit
