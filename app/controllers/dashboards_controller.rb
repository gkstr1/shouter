class DashboardsController < ApplicationController
  def show
      @text_shout = TextShout.new
      @shouts = current_user.shouts
      @photo_shout = PhotoShout.new
  end
end
