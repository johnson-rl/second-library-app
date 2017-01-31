class LibrariesController < ApplicationController

  def index
    @libraries = Library.all
  end

  def show
    @library = Library.find_by_id(params[:id])
  end

  def new
    @library = Library.new
  end

  def create
    @library = Library.create(library_params)
  end

  private

  def library_params
    params.require(:library).permit(:name, :floor_area, :floor_count)
  end

end
