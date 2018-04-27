class CommentsController < ApplicationController
  before_action :authorize, only: [:new]

  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def create
  @post = Post.find(params[:post_id])
  @comment = @post.comments.new(comment_params)
  if @comment.save
    flash[:notice] = "Thanks, your comment is has been added to the list!"
    redirect_to post_path(@post.id)
  else
    render :new
  end
end

  def edit
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    if @comment.update!(comment_params)
      flash[:notice] = "Your post was updated!"
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @post_id = @comment.post_id
    @comment.destroy
    redirect_to post_path(@post_id)
  end


  private
  def comment_params
    params.require(:comment).permit(:comment_body)
  end

end
