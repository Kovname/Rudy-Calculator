#!/usr/bin/env ruby

class Calculator
  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    raise ZeroDivisionError, "Ділення на нуль неможливе" if b.zero?
    a / b
  end
end

# Приклад використання
if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new
  
  puts "Простий калькулятор на Ruby"
  puts "Введіть перше число:"
  num1 = gets.chomp.to_f
  
  puts "Введіть друге число:"
  num2 = gets.chomp.to_f
  
  puts "Виберіть операцію (+, -, *, /):"
  operation = gets.chomp
  
  result = case operation
  when "+"
    calc.add(num1, num2)
  when "-"
    calc.subtract(num1, num2)
  when "*"
    calc.multiply(num1, num2)
  when "/"
    begin
      calc.divide(num1, num2)
    rescue ZeroDivisionError => e
      e.message
    end
  else
    "Невідома операція"
  end
  
  puts "Результат: #{result}"
end 