# load file
# split by newline
# strat 1
  # get all the numbers from each line
  # select first and last
class Loadyload
  def initialize(filename)
    @filename = filename
  end

  def lines
    File.readlines(@filename, chomp: true)
  end
end

class CalibrationLineParser
  def initialize(string)
    @string = string
  end

  def parse_number
    numbers = @string.scan(/\d/)
    return 0 if numbers.empty?
  
    string_pair = numbers.first + numbers.last
    string_pair.to_i
  end
end

class Trebuchet
  def initialize(loadyload)
    @loadyload = loadyload
  end

  def calibration_value
    @loadyload.lines.sum do |line|
      CalibrationLineParser.new(line).parse_number
    end
  end
end

p Trebuchet.new(Loadyload.new("./inputs.txt")).calibration_value
# strat 2
# use pointers at the beginning and end
  # systematically move each pointer by 1 char 
    # towards the middle until it hits a number
  # could be more performant, but not by much
    # same performance to strat 1 if the number is closer to the middle
    # though traversal is only once
# make to number
# sum the numbers
