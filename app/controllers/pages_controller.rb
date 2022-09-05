class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @no_nav = true
  end
end
