class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
  end
  def show
    @post = Post.find_by(id:params[:id])
  end
  def new
    @post = Post.new
  end
  def update
    @post = Post.find_by(id:params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "The edit has been saved."
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end
  def destroy
    @post = Post.find_by(id:params[:id])
    if @post.destroy
    flash[:notice] = "The post has been deleted."
    redirect_to("/posts/index")
    end
 end
  def edit
    @post = Post.find_by(id:params[:id])
  end
  def create
    @post = Post.new(content: params[:content])
    if @post.save
      flash[:notice] = "The post has been saved."
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
  end
end
