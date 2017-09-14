@author = nil;

if Book.all.empty?
    500.times do
        @author = Author.new(email: "#{Faker::HarryPotter.character.downcase.gsub(/\W/,'')}@email.com", authorized: true, name: Faker::HarryPotter.character)
        @author.save

        10.times do
            Book.create(terms_of_service: true,
            number_of_pages: 400,
            title: "#{Faker::LeagueOfLegends.quote}",
            desc: "#{Faker::LeagueOfLegends.quote} #{Faker::RickAndMorty.quote} #{Faker::Simpsons.quote} #{' '*100}",
            author_id: @author.id)
        end

    end 
end 

Segment.find_or_create_by(name: "base")
Segment.find_or_create_by(name: "premium")