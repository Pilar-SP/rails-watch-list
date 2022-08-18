class ListsController < ApplicationController
  before_action :set_list, only: [:show, :destroy]

  def index
    # @lists = List.all
    @lists = policy_scope(List)
  end

  def show
    @bookmark = Bookmark.new
    # authorize @list
    # authorize @bookmark
    authorize @list

  end

  def new
    @list = List.new
    authorize @list
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    authorize @list
    if @list.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @list
    @list.destroy
    redirect_to lists_path, status: :see_other
  end

  def home
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end

end
