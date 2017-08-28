system "clear"
@input = nil

def sum(a, b)
    a = a.to_f if a == a.to_i.to_s or a == a.to_f.to_s
    b = b.to_f if b == b.to_i.to_s or b == b.to_f.to_s
    if a.class == Float and b.class == Float
        ^(\+|\-)?[0-9]+((\.)?[0-9]+)?$
        return "Result is #{a + b}"
    end
    "Values not correct"
end

def operation_1
    system "clear"
    puts "First"
    op1 = gets.chomp
    puts "Second"
    op2 = gets.chomp
    puts sum(op1,op2)
    puts "Press any key to continue"
    gets.chomp
end

def operation_2
    puts "Enter numbers separated by a comma"
    opts_array = gets.chomp
    
    
end

def menu
    system "clear"
    puts "–"*60
    puts "    Nikodermus Calculator    ".rjust(40, '#') + '#'*20
    puts "   Welcome   ".rjust(31,'#') + '#'* 29
    puts "–"*60
    puts ""
    puts "Menu:".rjust(10, ' ')
    puts ' '*7 + " 1. Sum of two numbers"
    puts ' '*7 + " 2. Sum of a number array"
    puts ' '*7 + " 3. Minus of two numbers"
    puts ' '*7 + " 4. Minus of a number array"
    puts ' '*7 + " 5. Times of two numbers"
    puts ' '*7 + " 6. Times of a number array"
    puts ' '*7 + " 7. Division of two numbers"
    puts ' '*7 + " 8. Division of a number array"
    puts ' '*7 + " 9. Pow of two numbers"
    puts ' '*7 + "10. Pow of a number array"
    puts ' '*7 + " 0. Exit"
end

while @input != 0 do
    menu
    @input = gets.chomp.to_i
  
    case @input
        when 1 then operation_1
        when 2 then 
        else puts "Goodbye fella!"
    end
end
