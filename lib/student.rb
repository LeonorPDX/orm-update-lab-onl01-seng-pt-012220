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
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES (?, ?)
    SQL
 
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM songs")[0][0]
  end


end
