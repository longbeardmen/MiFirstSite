class WallCommentsController < ApplicationController
  def index

  end

  def new

  end

  def create
    WallComment.create(wall_comment_params)
    redirect_to :root
  end

  private

  def wall_comment_params
    params.require(:wall_comment).permit(:title, :message)
  end

end