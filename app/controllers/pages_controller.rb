class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    if user_signed_in?
      redirect_to lists_path, status: :ok
    else
      redirect_to new_user_session_path
    end

  end

end
