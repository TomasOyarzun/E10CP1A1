module Test
	def result
		average = (nota1 + nota2) / 2.0
		puts average > 4 ? "Estudiante aprobado" : "Estudiante reprobado" #Ternario
	end
end

module Attendance
	def student_quantity
		"La cantidad de estudiantes creados es: #{quantity}"
	end
end

class Student
	include Test
	extend Attendance
	attr_reader :nota1, :nota2
	@@quantity = 0
	def initialize(nombre, nota1 = 4, nota2 = 4)
		@nombre = nombre
		@nota1 = nota1
		@nota2 = nota2
		@@quantity += 1
	end

	def self.quantity
		@@quantity
	end
end

students = [['Cecilia', 4, 5], ['Tomás', 7, 7], ['Fernando', 5, 7], ['Antonia', 7, 5], ['Marcelo', 7, 7], ['Ricardo', 5, 7], ['Matías', 3, 4], ['Waldo', 7, 7], ['Rodrigo', 7, 5], ['Alicia', 2, 2]]
students.each { |s| Student.new(*s).result }
puts Student.student_quantity
