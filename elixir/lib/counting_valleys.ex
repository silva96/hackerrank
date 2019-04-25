defmodule CountingValleys do
  def count_valleys(path) do
    {_sum, valleys} =
      path
      |> String.split("", trim: true)
      |> Enum.reduce({0, 0}, &reduce_valleys/2)

    valleys
  end

  def reduce_valleys(char, {sum, valleys}) do
    can_go_in_valley = sum >= 0
    sum = if char == "U", do: sum + 1, else: sum - 1

    valleys = if can_go_in_valley && sum < 0, do: valleys + 1, else: valleys
    {sum, valleys}
  end

  def process do
    # we don't even use first line
    IO.gets("Number of steps of the path\n")
    path = IO.gets("Enter the path\n") |> to_string() |> String.trim()
    result = CountingValleys.count_valleys(path)
    IO.puts(result)
  end
end
