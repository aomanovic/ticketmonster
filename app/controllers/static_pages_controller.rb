class StaticPagesController < ApplicationController
  def home
    if logged_in?
      redirect_to(main_path, :notice => "User is logged in.")
    end
  end

  def help
  end

  def about
  end

  def contact
  end

end
