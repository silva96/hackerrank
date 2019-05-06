defmodule JumpingClouds do
  def jump(clouds, length, is_first_step \\ false) do
    if(length(clouds) == 1) do
      1 # this is the last cloud, we always jump on it.
    else
      if List.first(clouds) == "0" do
        one_step = clouds |> Enum.slice(1, length)
        two_steps = clouds |> Enum.slice(2, length)

        min = Enum.min([
          jump(one_step, length),
          jump(two_steps, length)
        ])
        add_step = if is_first_step, do: 0, else: 1
        min + add_step
      else
        length # so it's never better than the other step.
      end
    end
  end

  def process do
    length = IO.gets("Number clouds\n") |> String.trim() |> String.to_integer()
    clouds_array = IO.gets("Enter the clouds\n") |> to_string() |> String.trim() |> String.split()
    result = JumpingClouds.jump(clouds_array, length, true)
    IO.puts(result)
  end
end
