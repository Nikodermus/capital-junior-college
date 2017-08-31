class Product
    attr_accessor :name, :price, :weight #Read and Write access
    def initialize(opts = {})
        @name = opts[:name] ? opts[:name] : "NN"
        @price = opts[:price]
        @weight = opts[:weight]
    end

    #attr_accessor does both
        #What attr_reader dows
        def price
            @price
        end
        
        #What attr_writer does
        def price=(value)
            @price = value
        end
end

@papa_peruana = Product.new(name: "Papa Peruana", price: 500, weight: 200)
puts @papa_peruana.class
puts @papa_peruana.name
puts @papa_peruana.price
puts @papa_peruana.weight