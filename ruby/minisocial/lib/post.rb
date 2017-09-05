class Post
    attr_accessor :body
    def initialize(opts = {})
    @body = opts[:body].to_s
    end

    def nice_print
        puts "    · #{self.body}"
    end
end
