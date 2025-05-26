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
    raise ZeroDivisionError, "Деление на ноль невозможно" if b.zero?
    a / b
  end
end

# Пример использования
if __FILE__ == $PROGRAM_NAME
  calc = Calculator.new
  
  puts "Простой калькулятор на Ruby"
  puts "Введите первое число:"
  num1 = gets.chomp.to_f
  
  puts "Введите второе число:"
  num2 = gets.chomp.to_f
  
  puts "Выберите операцию (+, -, *, /):"
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
    "Неизвестная операция"
  end
  
  puts "Результат: #{result}"
end 