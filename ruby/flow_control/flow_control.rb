@number_c = 100
@number_d = 100

if(@number_c == @number_d)
    puts "Equals! #{@number_c}, #{@number_d}"
end

@number_c = 100
@number_d = 200

if(@number_c != @number_d)
    puts "Different! #{@number_c}, #{@number_d}"
end

if(@number_c == @number_d)
    puts "Different! #{@number_c}, #{@number_d}"
else
    puts "Not Equals #{@number_c}, #{@number_d}"
end

if(@number_c == @number_d)
    puts "Different! #{@number_c}, #{@number_d}"
elsif(@number_c < @number_d)
    puts "#{@number_c} is larger than #{@number_d}"
else
    puts "Not Equals #{@number_c}, #{@number_d}"
end

if(10 == 10) then puts "Short onlu true" end
10 == 10 ? puts("true") : puts("false")
10 != 10 ? puts("true") : puts("false")

#Looping

# While
@i = 0
while(@i < 10) do
    @i += 1
    puts @i
end

# For with range
for i in 0..3 do
    puts i
end

#For with a number and a counter
100.times do |i|
    puts "hi #{i}"
end

@my_array = ['a','b','pato']
@my_array.each do |e|
    puts e
end

#Each with index
@my_array.each_with_index do |e, i|
    puts "The index of #{e} is #{i}"
end

@my_hash = {hola: "wey", :como => 13}
@my_hash.each do |e|
    puts e
end

# @my_number = 1224124
# @my_number.each do |e|
#     puts e
# end

@my_range = 0..100
@my_range.each do |e|
    puts "#{e} wu"
end

@new_hash = {:one => 1, :two => 2, :three => 3}
@second_string = "";
@new_hash.each do |e,i|
    @second_string += e.to_s
end
puts @second_string