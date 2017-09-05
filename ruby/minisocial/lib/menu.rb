def menu_log
    system "clear"
    puts "–"*60
    puts "    Nikodermus Network    ".rjust(38, '#') + '#'*22
    puts "   Welcome   ".rjust(31,'#') + '#'* 29
    puts "–"*60
    puts ""
    puts "Menu:".rjust(10, ' ')
    puts ' '*7 + " 1. Register"
    puts ' '*7 + " 2. Log In"
    puts ' '*7 + " 0. Exit"
end

def menu_user
    system "clear"
    puts "–"*60
    puts "    Nikodermus Network    ".rjust(38, '#') + '#'*22
    puts "   Welcome #{@current_user.nickname.length <= 0 ?
                    @current_user.email : 
                    @current_user.nickname}   "
            .rjust(31,'#') + '#'* 29
    puts "–"*60
    puts ""
    puts "Menu:".rjust(10, ' ')
    puts ' '*7 + " 1. Create post"
    puts ' '*7 + " 2. News feed"
    puts ' '*7 + " 3. My Profile"
    puts ' '*7 + " 4. Log out"
    puts ' '*7 + " 0. Exit"
end