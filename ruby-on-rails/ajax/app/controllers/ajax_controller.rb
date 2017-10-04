class AjaxController < ApplicationController
    def index
    end
    def create
        users = User.all
        render json: users
        
    end
end
