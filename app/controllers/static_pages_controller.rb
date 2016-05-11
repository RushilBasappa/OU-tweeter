class StaticPagesController < ApplicationController
  def home
    @admins = User.all.where(:admin => true)
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end


  def about
  end

  def contact
    @admins = User.all.where(:admin => true)
  end
end
