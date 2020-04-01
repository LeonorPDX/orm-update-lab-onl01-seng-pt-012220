require_relative "../config/environment.rb"

class Student

  attr_reader :id 
  attr_accessor :name, :grade
  
  def initialize(name, grade, id=nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    
  end
  
  def self.drop_table
    
  end
  
  def save
    if self.id
      self.update
    else
      sql  = <<-SQL
      INSERT INTO students(name, grade)
      VALUES (?, ?)
      SQL 
      
  end


end
