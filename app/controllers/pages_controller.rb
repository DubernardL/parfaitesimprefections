class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :atelier]

  def home
  end

  def atelier
  end
end
