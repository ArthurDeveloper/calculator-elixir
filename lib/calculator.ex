defmodule Calculator do
  alias Calculator.Operations

  def main(%{value1: n1, signal: signal, value2: n2}) do
    perform(n1, signal, n2)
  end

  defp perform(n1, signal, n2) do
    case signal do
      "+" -> IO.puts("The sum is #{Operations.sum(n1,n2)}")
      "-" -> IO.puts("The subtraction is #{Operations.subtract(n1,n2)}")
      "/" -> IO.puts("The divide is #{Operations.divide(n1,n2)}")
      "*" -> IO.puts("The multply is #{Operations.multiply(n1,n2)}")
      "**" -> IO.puts("The pow is #{Operations.pow(n1,n2)}")
      "v" -> IO.puts("The square root is #{Operations.sqrt(n1)}")
      _ -> {:error, "Invalid operator"}
    end
  end
end
