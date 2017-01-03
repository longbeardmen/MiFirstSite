class WallCommentsController < ApplicationController
  def index

  end

  def new

  end

  def create
    @comment = WallComment.create(wall_comment_params)
    respond_to do |format|
      format.html { redirect_to :root, notice: 'Comment was successfully created.' }
      CommentsMailer.welcome_email(wall_comment_params[:title]).deliver_later
    end
  end

  private

  def wall_comment_params
    params.require(:wall_comment).permit(:title, :message)
  end

end
