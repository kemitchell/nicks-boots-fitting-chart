# frozen_string_literal: true

def display(quantity)
  string = ''
  string = quantity[:wholes].to_s if quantity[:wholes].positive?
  eighths = quantity[:eighths]
  return string unless eighths.positive?

  "#{string} #{display_eighths(quantity)}"
end

def display_eighths(quantity)
  eighths = quantity[:eighths]
  if (eighths % 4).zero?
    "#{(eighths / 4).to_i}/2"
  elsif (eighths % 2).zero?
    "#{(eighths / 2).to_i}/4"
  else
    "#{eighths.to_i}/8"
  end
end
