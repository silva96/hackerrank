# frozen_string_literal: true

def count_valleys(path)
  valleys = 0
  path.chars.reduce(0) do |sum, char|
    can_go_in_valley = sum >= 0
    sum += char == 'U' ? 1 : -1
    valleys += 1 if can_go_in_valley && sum.negative?
    sum
  end
  valleys
end

gets.to_i # we don't even use first line
path = gets.to_s
result = count_valleys(path)
puts result
