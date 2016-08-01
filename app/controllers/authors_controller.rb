class AuthorsController < ApplicationController
  before_action :find_author, only: [:show, :edit, :update, :destroy]

  def index
    @authors = Author.all
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @author.update(author_params)
      redirect_to @author
    else
      render 'edit'
    end
  end

  def destroy
    @author.destroy

    redirect_to authors_path
  end

  private

  def author_params
    params.require(:author).permit(:name, :bio, :born, :died)
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
