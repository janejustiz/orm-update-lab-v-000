require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  def initialize(name, grade, id=nil)
    @name=name
    @grade=grade
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE students(
      id INTEGER PRIMARY KEY,
      name TEXT,
      grade TEXT
    )
    SQL
    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
    DROP TABLE students
    SQL

    DB[:conn].execute(sql)
  end

  def save
    if self.id
      self.update
    else
      sql = <<-SQL
        INSERT INTO cats (id, name, grade)
        VALUES (self.id, self.name, self.grade)
      SQL
      DB[:conn].execute(sql)
    end
  end

  def self.create
    sql = <<-SQL
    SQL
  end

  def self.new_from_db
    sql = <<-SQL
    SQL
  end

  def self.find_by_name
    sql = <<-SQL
    SQL
  end

  def update
    sql = <<-SQL
    SQL
  end

end
