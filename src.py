from typing import List

def calculate_average(n: int, t: List[int]) -> int:
    if n == 0:
        return 0  # Avoid division by zero
    return sum(t) // n

# Main block
if __name__ == "__main__":
    n: int = int(input())
    t: List[int] = list(map(int, input().split()))
    average: int = calculate_average(n, t)
    print(average)
