class AjaxController < ApplicationController
    def  index
    end

    def last_user
        user_last = User.last
        render json: user_last
    end

    def random_user
        User.create(name: Faker::Simpsons.character)
        return true
    end
end
