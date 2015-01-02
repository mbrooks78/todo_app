class FilestoresController < ApplicationController
  layout 'upload'
  before_action :get_user
  before_action :get_list
  before_action :get_item
  #before_action :set_filestore

  def index
    @filestores = @item.filestores
  end

  def new
    @filestore = @item.filestores.build
    #@filestore = @item.filestores.build
  end

  def create
    @filestore = @item.filestores.build(filestore_params)

    if @filestore.save
      redirect_to user_list_item_filestores_path, notice: "The file #{@filestore.name} has been uploaded"
    else
      render 'new'
    end

  end

  def destroy
    @filestore = @item.filestores.find(params[:id])
    @filestore.destroy
    respond_to do |format|
      format.html { redirect_to (user_list_item_filestores_path(@user, @list, @item)), notice: "The file #{@filestore.name} has been deleted." }
    end
  end

  private
  def filestore_params
    params.require(:filestore).permit(:name, :attachment, :item_id)
  end

  def set_filestore
    @filestore = Filestore.find(params[:id])
  end

  def get_user
    @user = User.find(params[:user_id])
  end

  def get_list
    @list = List.find(params[:list_id])
  end

  def get_item
    @item = Item.find(params[:item_id])
  end
end
