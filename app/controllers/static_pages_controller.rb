class StaticPagesController < ApplicationController
  def home
    @admins = User.all.where(:admin => true).order(:name)
    if logged_in?
      @micropost = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end


  def about
  end

  def contact
    @admins = User.all.where(:admin => true).order(:name)
  end
end
