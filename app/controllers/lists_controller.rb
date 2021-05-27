class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list, notice: 'List was successfully created.'
    else
      render :new
    end
  end

private
  def set_list
    @list = List.find(params[:id])
  end

  # def list_params
  #     params.require(:list).permit(:name, :banner_url)
  # end
end
