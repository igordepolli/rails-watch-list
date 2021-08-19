class ListsController < ApplicationController
  def index
    # TODO
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    # TODO
  end

  def create
    # TODO
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
