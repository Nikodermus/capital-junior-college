class User
    attr_accessor :email, :password, :nickname, :posts
    def initialize(opts = {})
        @email_reg = /\A\p{Alnum}+@\p{Alnum}+\.com\z/
        @pass_reg = /\A.{8,}\z/
        @email = opts[:email].to_s.scan(@email_reg).any? ? opts[:email] : abort("Email not validate #{opts[:email]}") #Throw an exception raise(Exception.new("Nel carnel"))
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
        gets.chomp
    end
end
