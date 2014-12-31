class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  before_action :get_user

  # GET /lists
  # GET /lists.json
  def index
    @lists = @user.lists
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    @list = @user.lists.find(params[:id])
  end

  # GET /lists/new
  def new
    @user = User.find(params[:user_id])
    @list = @user.lists.build
    #@list = List.new
  end

  # GET /lists/1/edit
  def edit
    @list = @user.lists.find(params[:id])
  end

  # POST /lists
  # POST /lists.json
  def create
    #@list = List.new(list_params)
    @list = @user.lists.build(list_params)

    respond_to do |format|
      if @list.save
        format.html { redirect_to user_lists_url, notice: 'List was successfully created.' }
        format.json { render :show, status: :created, location: @list }
      else
        format.html { render :new }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    @list = @user.lists.find(params[:id])
    respond_to do |format|
      if @list.update(list_params)
        format.html { redirect_to user_lists_url(@user), notice: 'List was successfully updated.' }
        format.json { render :show, status: :ok, location: @list }
      else
        format.html { render :edit }
        format.json { render json: @list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list = @user.lists.find(params[:id])
    @list.destroy
    respond_to do |format|
      format.html { redirect_to user_lists_path(@user), notice: 'List was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    def get_user
      @user = User.find(params[:user_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:list_item, :user_id)
    end
end
