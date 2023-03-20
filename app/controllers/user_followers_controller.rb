class UserFollowersController < ApplicationController
  def index
    matching_user_followers = UserFollower.all

    @list_of_user_followers = matching_user_followers.order({ :created_at => :desc })

    render({ :template => "user_followers/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_followers = UserFollower.where({ :id => the_id })

    @the_user_follower = matching_user_followers.at(0)

    render({ :template => "user_followers/show.html.erb" })
  end

  def create
    the_user_follower = UserFollower.new
    the_user_follower.user_id = params.fetch("query_user_id")
    the_user_follower.follower_id = params.fetch("query_follower_id")

    if the_user_follower.valid?
      the_user_follower.save
      redirect_to("/user_followers", { :notice => "User follower created successfully." })
    else
      redirect_to("/user_followers", { :alert => the_user_follower.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user_follower = UserFollower.where({ :id => the_id }).at(0)

    the_user_follower.user_id = params.fetch("query_user_id")
    the_user_follower.follower_id = params.fetch("query_follower_id")

    if the_user_follower.valid?
      the_user_follower.save
      redirect_to("/user_followers/#{the_user_follower.id}", { :notice => "User follower updated successfully."} )
    else
      redirect_to("/user_followers/#{the_user_follower.id}", { :alert => the_user_follower.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user_follower = UserFollower.where({ :id => the_id }).at(0)

    the_user_follower.destroy

    redirect_to("/user_followers", { :notice => "User follower deleted successfully."} )
  end
end
