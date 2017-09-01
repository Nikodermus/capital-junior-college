require "faker"

class Post
    attr_accessor :body
    def initialize(opts = {})
    @body = opts[:body].to_s
    end

    def nice_print
        puts "    · #{self.body}"
    end
end

class User
    attr_accessor :email, :password, :nickname, :posts
    def initialize(opts = {})
        @email_reg = /\A[\w\d]+@[\w\d]+\.[\w\d]+\z/
        @pass_reg = /\A.{8}.*\z/
        @email = opts[:email].to_s.scan(@email_reg).any? ? opts[:email] : abort("Email not validate") #Throw an exception raise(Exception.new("Nel carnel"))
        @password = opts[:password].to_s.scan(@pass_reg).any? ? opts[:password] : abort("Password not validate") 
        @nickname = opts[:nickname].to_s 
        @posts = opts[:posts].is_a?(Array) ? opts[:posts] : []
    end

    #Create new post and add it to the user's post array
    #parameters: opts = {}, opts[:body]
    def create_post(opts = {})
        self.posts << Post.new(opts)
        
    end

    def authenticate(submited)
        self.password == submited
    end

    def nice_print_post
        self.posts.each do |post|
            post.nice_print
        end
    end
end

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
                    @current_user.nickname}"
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

def sign_up
    system "clear"
    puts "Your e-mail"
    email = gets.chomp
    puts "Digit password"
    pass =  gets.chomp
    puts "Confirm password"
    pass_c =  gets.chomp
    puts "Add a nickname"
    nickname =  gets.chomp

    if pass != pass_c
        system "clear"
        puts "Passwords don't match."
        pause
        sign_up
        return
    end

    if @users[email]
        system "Clear"
        puts "User already registered."
        pause
        sign_up
        return
    end

    @users[email] = User.new(email: email, password: pass, nickname: nickname)
    @current_user = @users[email]
    @users[email].inspect
    
end

def sign_in
    system "clear"
    puts "Write your email"
    email = gets.chomp
    puts "Write the password"
    pass = gets.chomp
    if @users[email] and @users[email].authenticate(pass)
        @current_user = @users[email]
    else
        system "clear"
        puts "Invalid password or email"
    end
end

def log_out
    system "clear"
    puts "Bye bye Pal!"
    @current_user = nil
    pause
end

def new_post
    system "clear"
    puts "Write your awesome post"
    post_body = gets.chomp
    while (post_body.length <= 0)
        puts "Write something!"
        post_body = gets.chomp
    end
    @current_user.create_post(body: post_body)
    puts "Post added!"
    pause    
end

def show_neewsfeed
    system "clear"
    puts "Latest posts"
    @users.each do |email, user|
        puts "#{user.nickname.length > 0 ? user.nickname : user.email} wrote: "
        user.nice_print_post
        puts ""
    end
    pause
end

def my_profile
    system "clear"
    puts @current_user.nickname.length > 0 ? "Nickname: #{@current_user.nickname}" : ""
    puts "E-Mail: #{@current_user.email}"
    puts "Password: #{"*"*@current_user.password.length}"
    if @current_user.posts.length > 0
        puts "Posts:"
        @current_user.posts.each do |post|
            puts "     · #{post.body}"
        end
    else
        puts "No posts available"
    end
    pause
end

def pause
    puts "–"*20
    puts "Press any key to continue"
    gets.chomp
end


@input = nil
@users = {}
@users["n@d.c"] =  User.new(email: "n@d.c", password: "12345678", nickname: "Dermus")
@current_user = @users["n@d.c"]


while @input != 0 do
    if @current_user
        menu_user
        case @input
            when 1 then new_post
            when 2 then show_neewsfeed
            when 3 then my_profile
            when 4 then log_out
            when 0 then return
        end
    else
        menu_log
        case @input
            when 1 then sign_up    
            when 2 then sign_in
            when 0 then return                
        end
    end
    @current_user ? menu_user : menu_log
    @input = gets.chomp.to_i
end
