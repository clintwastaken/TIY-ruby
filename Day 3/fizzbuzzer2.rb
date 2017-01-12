#fizzbuzzer class
class Fizzbuzzer

  #initialize method
  def initialize(base)
    @base = base
  end

  #run method
  def run(max)

    ns = 1 .. max
    ns.each do |n|
      if n % @base == 0
        puts 'Fizz'
      else
        puts n
      end
    end

  end

end

# -----

f = Fizzbuzzer.new(5)
f.run(11)

puts "\n"

f = Fizzbuzzer.new(2)
f.run(5)




























# #replace numbers divisible by 3 in a range of 1-100
#
# ns = 1 .. 100
# ns.each do |n|
#   if n % 3 == 0
#     puts 'Fizz'
#   else
#     puts n
#   end
# end

