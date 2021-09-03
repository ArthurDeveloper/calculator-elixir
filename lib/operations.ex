defmodule Calculator.Operations do
  def sum(a, b) do
    result = a + b
    result
  end

  def subtract(a, b) do
    result = a - b
    result
  end

  def multiply(a, b) do
    result = a * b
    result
  end

  def divide(a, b) do
    result = a / b
    result
  end

  def pow(a, b) do
    result = :math.pow(a, b)
    result
  end

  def sqrt(a) do
    result = :math.sqrt(a)
    result
  end
end
