import math

def calculate_sqrt(number):
    return math.sqrt(number)

def calculate_cube(number):
    return number ** 3

if __name__ == "__main__":
    sqrt_result = calculate_sqrt(9)
    cube_result = calculate_cube(3)

    print("Square root of 9:", sqrt_result)
    print("Cube of 3:", cube_result)
