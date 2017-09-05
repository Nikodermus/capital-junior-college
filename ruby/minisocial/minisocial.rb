require 'rubygems'
require 'faker'
require './lib/post'
require './lib/user'
require './lib/menu'


def seed
    #Create 1 thousand users
    1000.times do
        @new_user = {
            nickname:  "",
            email: "",
            password:  "",
            posts: []
        }
        @new_user[:nickname] =  Faker::Name.name.to_s.downcase.gsub(/\W/,'')
        @new_user[:email] = "#{@new_user[:nickname]}@#{Faker::GameOfThrones.house.downcase.gsub(/\W/,'')}.com"
        @new_user[:password] =  (0...8).map { (65 + rand(26)).chr }.join
        @new_user[:posts] = []
        
        system "clear"
        system "clear"
        puts "LOADING #{@counter/2 == 0 ? "⠋" : "⠼"} ⸨#{'I'*(@counter/10).to_i}#{'░'*(100-@counter/10).to_i}⸩"
        puts "Creating: #{@new_user[:email]}"
        puts "Almost ready" if @counter > 800
        1000.times do
            @new_user[:posts] << Post.new({body: Faker::StarWars.quote})
        end
        create_user(@new_user)
    end
end

def create_user(opts = {})
    if !@users[opts[:email]]
        @counter += 1
       
        @users[opts[:email]] = User.new(opts)
    end
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
@users["n@d.com"] =  User.new(email: "n@d.com", password: "12345678", nickname: "Dermus")
@current_user = @users["n@d.com"]
@counter = 0
seed

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
