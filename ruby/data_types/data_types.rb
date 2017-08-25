#Integer
@my_integer = 13
def get_my_integer
    puts @my_integer
end
def set_my_integer(new_integer)
    puts @my_integer = new_integer
end

def puts_my_integer
    puts @my_integer
end

def class_of_integer
    puts @my_integer.class
end

def puts_my_integer_as_string
    puts @my_integer.to_s
end

puts "Integers"
get_my_integer
set_my_integer(14)
puts_my_integer
class_of_integer
puts_my_integer_as_string




#String
@my_string = "Dermus"
def get_my_string
    puts @my_string
end
def set_my_string(new_string)
    puts @my_string = new_string
end

def puts_my_string
    puts @my_string
end

def class_of_string
    puts @my_string.class
end

def puts_my_string_as_string
    puts @my_string.to_s
end

puts "strings"
get_my_string
set_my_string("Nico")
puts_my_string
class_of_string
puts_my_string_as_string



#array
@my_array = ["I'm",13]
def get_my_array
    puts @my_array
end
def set_my_array(new_array)
    puts @my_array = new_array
end

def puts_my_array
    puts @my_array
end

def class_of_array
    puts @my_array.class
end

def puts_my_array_as_string
    puts @my_array.to_s
end

puts "arrays"
get_my_array
set_my_array(["yay", 6])
puts_my_array
class_of_array
puts_my_array_as_string



#hash
@my_hash = {cool: true, sucks: false}
def get_my_hash
    puts @my_hash
end
def set_my_hash(new_hash)
    puts @my_hash = new_hash
end

def puts_my_hash
    puts @my_hash
end

def class_of_hash
    puts @my_hash.class
end

def puts_my_hash_as_string
    puts @my_hash.to_s
end

puts "hashs"
get_my_hash
set_my_hash({sure: "whatever", ok: 13})
puts_my_hash
class_of_hash
puts_my_hash_as_string



#float
@my_float = 13.6
def get_my_float
    puts @my_float
end
def set_my_float(new_float)
    puts @my_float = new_float
end

def puts_my_float
    puts @my_float
end

def class_of_float
    puts @my_float.class
end

def puts_my_float_as_string
    puts @my_float.to_s
end

puts "floats"
get_my_float
set_my_float(6.13)
puts_my_float
class_of_float
puts_my_float_as_string





#true
@my_true = true
def get_my_true
    puts @my_true
end
def set_my_true(new_true)
    puts @my_true = new_true
end

def puts_my_true
    puts @my_true
end

def class_of_true
    puts @my_true.class
end

def puts_my_true_as_string
    puts @my_true.to_s
end

puts "trues"
get_my_true
set_my_true(true)
puts_my_true
class_of_true
puts_my_true_as_string





#false
@my_false = false
def get_my_false
    puts @my_false
end
def set_my_false(new_false)
    puts @my_false = new_false
end

def puts_my_false
    puts @my_false
end

def class_of_false
    puts @my_false.class
end

def puts_my_false_as_string
    puts @my_false.to_s
end

puts "falses"
get_my_false
set_my_false(false)
puts_my_false
class_of_false
puts_my_false_as_string








#nil
@my_nil
def get_my_nil
    puts @my_nil
end
def set_my_nil(new_nil)
    puts @my_nil = new_nil
end

def puts_my_nil
    puts @my_nil
end

def class_of_nil
    puts @my_nil.class
end

def puts_my_nil_as_string
    puts @my_nil.to_s
end
@nil2
puts "nils"
get_my_nil
set_my_nil(@nil2)
puts_my_nil
class_of_nil
puts_my_nil_as_string

def by_console
    puts ARGV[0]
end

by_console
























