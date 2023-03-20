class UserFeedsController < ApplicationController
  def index
    matching_user_feeds = UserFeed.all

    @list_of_user_feeds = matching_user_feeds.order({ :created_at => :desc })

    render({ :template => "user_feeds/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_user_feeds = UserFeed.where({ :id => the_id })

    @the_user_feed = matching_user_feeds.at(0)

    render({ :template => "user_feeds/show.html.erb" })
  end

  def create
    the_user_feed = UserFeed.new
    the_user_feed.user_id = params.fetch("query_user_id")
    the_user_feed.post_id = params.fetch("query_post_id")

    if the_user_feed.valid?
      the_user_feed.save
      redirect_to("/user_feeds", { :notice => "User feed created successfully." })
    else
      redirect_to("/user_feeds", { :alert => the_user_feed.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_user_feed = UserFeed.where({ :id => the_id }).at(0)

    the_user_feed.user_id = params.fetch("query_user_id")
    the_user_feed.post_id = params.fetch("query_post_id")

    if the_user_feed.valid?
      the_user_feed.save
      redirect_to("/user_feeds/#{the_user_feed.id}", { :notice => "User feed updated successfully."} )
    else
      redirect_to("/user_feeds/#{the_user_feed.id}", { :alert => the_user_feed.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_user_feed = UserFeed.where({ :id => the_id }).at(0)

    the_user_feed.destroy

    redirect_to("/user_feeds", { :notice => "User feed deleted successfully."} )
  end
end
