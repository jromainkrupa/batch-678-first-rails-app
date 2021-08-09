class PagesController < ApplicationController
  def about
  end

  def contact

    @members = [ 'thanh', 'dimitri','dim', 'germain', 'damien', 'julien' ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end

  def index
    @restaurants = Restaurant.all
  end
end

