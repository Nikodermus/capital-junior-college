@my_string_1 = "info@college.com"
@my_string_2 = "234as@college"
@my_string_3 = "4_f@colllege.com "
@my_string_4 = "ad-f@college.com"
@my_string_5 = "as3+´+@college.com"
@my_regex = /[\d\w-]*@college.com/
@second_reg = /\A.*@(college.com)?>\z/
puts "1 #{@my_string_1.scan(@second_reg)}"
puts "2 #{@my_string_2.scan(@my_regex)}"
puts "3 #{@my_string_3.scan(@my_regex)}"
puts "4 #{@my_string_4.scan(@my_regex)}"
puts "5 #{@my_string_5.scan(@my_regex)}"

@my_file = ["fijgle.png","filase.jpeg","fil12e.gif","fi-ale.jpg.pdf"]
@file_regex = /.*\.png$|.*\.jpg$|.*\.jpeg$|.*\.gif$|.*\.bmp$|.*\.svg$/
puts "Imagenes aceptadas"
for i in @my_file
    puts i.scan(@file_regex)
end

@my_tags = ["<hola> wau </hola>", "<nick></nick>", "<img>", "<umg/>", "<igm>",]

#@