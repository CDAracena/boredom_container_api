class GeekJokesController < ApplicationController
    def index
        @geek_jokes = current_user.geek_jokes.all

        render json: {
            user_geek_collection: @geek_jokes,
            user_id: current_user.id
    }
    end
end
