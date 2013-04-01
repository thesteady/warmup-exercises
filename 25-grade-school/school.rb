class School
  attr_reader :school
  attr_accessor :db
  def initialize(school)
    @school = school
    @db ||= {}
  end

  def add(student, grade)
    if db.has_key? grade
      db[grade] << student
    else
      db[grade] = [student]
    end
  end

  def grade(grade)
    db[grade]
  end

  def sort
    db.sort
  end
end
