import unittest

from src import calculate_average


class TestAverageCalculation(unittest.TestCase):

    def test_average_calculation(self):
        n = 4
        t = [10, 20, 30, 40]
        self.assertEqual(calculate_average(n, t), 25)

    def test_average_with_empty_list(self):
        n = 0
        t = []
        self.assertEqual(calculate_average(n, t), 0)


if __name__ == "__main__":
    unittest.main()
