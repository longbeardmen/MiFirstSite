class WelcomeController < ApplicationController
  def index
    @photos_info = Footbolist.all.map{|f| {name: "#{f.name} #{f.second_name}", url:f.image.url}}
    @comments = WallComment.all.last(5)
  end
end
