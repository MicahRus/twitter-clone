class RelationshipsController < ApplicationController
  def create
    @user = User.where(username: params[:username])[0]
    @total_relationships = Relationship.all
    @new_relationship = Relationship.new(user_id: @user.id, follower_id: current_user.id)

    if @total_relationships.empty?
      @new_relationship.save
    else
      @total_relationships.each do |relationship|
        if relationship.user_id == @new_relationship.user_id && relationship.follower_id == @new_relationship.follower_id
          relationship.destroy
          @new_relationship.destroy
          break
        else
          @new_relationship.save
        end
      end
    end

    redirect_to request.referer
  end
end
