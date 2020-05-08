class RelationshipsController < ApplicationController
    def create
        @follower = current_user.id
        
    end
end
