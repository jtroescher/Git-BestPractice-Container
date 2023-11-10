def calculate_average(n, t):
    if n == 0:
        return 0  # Avoid division by zero
    return sum(t) // n

if __name__ == "__main__":
    n = int(input())
    t = list(map(int, input().split()))
    average = calculate_average(n, t)
    print(average)