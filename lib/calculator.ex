defmodule Calculator do

  def main() do
    {n1, ""} = str_to_int(IO.gets("Digite um número: ")
                          |> String.replace("\r", "")
                          |> String.replace("\n", ""))
    {n2, ""} = str_to_int(IO.gets("Digite outro número: ")
                          |> String.replace("\r", "")
                          |> String.replace("\n", "")
                          )

    IO.puts("A soma entre #{n1} e #{n2} é igual a #{sum(n1, n2)}")
    IO.puts("A diferença entre #{n1} e #{n2} é igual a #{subtract(n1, n2)}")
    IO.puts("O produto entre #{n1} e #{n2} é igual a #{multiply(n1, n2)}")
    IO.puts("O quociente entre #{n1} e #{n2} é igual a #{divide(n1, n2)}")
    IO.puts("A potência entre #{n1} e #{n2} é igual a #{pow(n1, n2)}")
    IO.puts("A raiz quadrada de #{n1} é #{sqrt(n1)} e a raiz quadrada de " <>
            "#{n2} é igual a #{sqrt(n2)}")

  end

  defp str_to_int(string) do
    Integer.parse(string)
  end

  defp sum(a, b) do
    a + b
  end

  defp subtract(a, b) do
    a - b
  end

  defp multiply(a, b) do
    a * b
  end

  defp divide(a, b) do
    a / b
  end

  defp pow(a, b) do
    :math.pow(a, b)
  end

  defp sqrt(a) do
    :math.sqrt(a)
  end

end
