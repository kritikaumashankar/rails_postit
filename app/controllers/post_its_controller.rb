class PostItsController < ApplicationController
  def index
    @post_its = PostIt.all
  end

  def show
    @post_it = PostIt.find(params[:id])
  end

  def new
    @post_it = PostIt.new
  end

  def create
    @post_it = PostIt.new(post_its_params)

    if @post_it.save
      redirect_to post_its_path
    else
      render :new
    end
  end
  private
  def post_its_params
    params.require(:post_it).permit(:title, :body, :completed)
  end
end
