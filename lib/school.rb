class School
  attr_accessor :student, :roster

  def initialize(student)
    @student = student
    @roster = {}
  end

  def add_student(student_name, grade)
    roster[grade] ||= []
    roster[grade] << student_name
  end

  def grade(student_grade)
    roster[student_grade]
  end

  def sort
    sorted_students = {}
    roster.each do |grade, students|
      sorted_students[grade] = students.sort
    end
    sorted_students
  end
end