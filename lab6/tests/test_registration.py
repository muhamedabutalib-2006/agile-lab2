from registration import Student

def test_register_adds_hours():
    student = Student("2023001")
    student.register("SET312", 3)
    assert student.total_hours == 3
