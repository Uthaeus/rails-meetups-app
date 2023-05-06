class PagesController < ApplicationController
  def home
    @meetups = Meetup.all.slice(0, 3);
  end

  def details
  end
end
