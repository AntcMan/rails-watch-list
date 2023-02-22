class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path(@list)
    else
      render :new
    end
  end

  # DELETE /bookmarks/:id
  def destroy
    # Find the bookmark with params[:id]
    @bookmark = Bookmark.find(params[:id])
    # destroy bookmark
    @bookmark.destroy
    # redirect to list show page
    redirect_to list_path(@bookmark.list), status: :see_other
  end


  private

  def list_params
    params.require(:list).permit(:name)
  end
end
