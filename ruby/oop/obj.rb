class Product
    attr_accessor :name, :price #Read and Write access
    attr_writer :color
    attr_reader :id
    def initialize(name, price)
        @name = name
        @price = 100
        @color = price
        @id = 129048
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
@papa = Product.new("Criolla", 100)
puts @papa.name
puts @papa.price
@papa.price = 200
puts @papa.price
@papa.color = "red"
puts @papa.id

@papa_peruana = Product.new("Peruana", 400)
@papa_peruana.class
@papa_peruana.name
@papa_peruana.price