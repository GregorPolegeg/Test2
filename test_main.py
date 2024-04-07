import pytest
from main import calculate_sqrt, calculate_cube

def test_calculate_sqrt():
    number_to_sqrt = 9
    expected_sqrt_result = 12
    sqrt_result = calculate_sqrt(number_to_sqrt)
    assert sqrt_result == expected_sqrt_result, f"Square root of {number_to_sqrt} should be {expected_sqrt_result}, but got {sqrt_result}"

def test_calculate_cube():
    number_to_cube = 3
    expected_cube_result = 27
    cube_result = calculate_cube(number_to_cube)
    assert cube_result == expected_cube_result, f"Cube of {number_to_cube} should be {expected_cube_result}, but got {cube_result}"
