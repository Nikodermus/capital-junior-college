@name = "carlos"
@last_name = "gomez"
@regexp = Regexp.new("\\A#{@name}.*#{@last_name}\\z") #Backslashes must be escaped
@str = "carlos345345ksdhfasjdhasjkdgomez"
puts "Hola #{@str.scan(@regexp)}"