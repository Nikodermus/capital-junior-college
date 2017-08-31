
class Post
    attr_accessor :body
    def initialize(opts = {})
    @body = opts[:body].to_s
end
end

class User
    attr_accessor :email, :password, :nickname, :posts
    def initialize(opts = {})
        @email_reg = /\A[\w\d]+@[\w\d]+\.[\w\d]+\z/
        @pass_reg = /\A.{8}\z/
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
end

dermus = User.new(
    email: "n@dermus.com",
    password: "j238+2ba",
    nickname: "dermus"
)

puts dermus.inspect

patodermus = User.new(
    email:  "hola@e.s",
    password: "12345678",
    nickname: "pato"
)

puts patodermus.inspect
patodermus.create_post({body: "I'm sooooo interesting"})
patodermus.create_post({body: "I'm sooooo funny"})
patodermus.create_post({body: "I'm sooooo smart"})
patodermus.create_post({body: "I'm sooooo noble"})
puts patodermus.create_post.inspect
puts patodermus.posts.last.body