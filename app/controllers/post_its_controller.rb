class PostItsController < ApplicationController
  def index
    @post_its = PostIt.order(created_at: :asc)
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

  def edit
    @post_it = PostIt.find(params[:id])
  end

  def update
    @post_it = PostIt.find(params[:id])
  
    if @post_it.update(post_its_params)
      redirect_to post_its_path
    else
      render :edit
    end
  end

  def destroy
    PostIt.find(params[:id]).destroy
  redirect_to post_its_path
  end

  private
  def post_its_params
    params.require(:post_it).permit(:title, :body, :completed)
  end
end
