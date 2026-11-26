import pytest
from registration import Student

def test_register_adds_hours():
    student = Student("2023001")
    student.register("SET312", 3)
    assert student.total_hours == 3

def test_cannot_go_over_18_hours():
    student = Student("2023001")
    student.register("SET312", 15)
    with pytest.raises(ValueError):
        student.register("SET472", 4)
    assert student.total_hours == 15
