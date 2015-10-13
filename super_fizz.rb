# clearest
(1..1000).each do |nums|
    div3 = nums % 3 == 0
    div5 = nums % 5 == 0
    div7 = nums % 7 == 0
    if div3 && div5 && div7
      puts "SuperFizzBuzz"
    elsif div3 && div7
      puts "SuperFizz"
    elsif div5 && div7
      puts "SuperBuzz"
    elsif div3
      puts "Fizz"
    elsif div5
      puts "Buzz"
    elsif div7
      puts "Super"
    else
      puts nums
    end
 end

# fewer lines
 1.upto(1000) do |i|
   result = "SuperFizzBuzz#{i}"[i%7<1 ? 0 : i%3<1 ? 5 : i%5<1 ? 9 : 13, i%35<1 ? 13 : i%21<1 ? 9 : i%7<1 ? 5 : 4]
   result.gsub!(/Fizz/, '') if i%35<1 && !(i%3<1)
   puts result
 end
