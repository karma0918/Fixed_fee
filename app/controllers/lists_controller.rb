class ListsController < ApplicationController

  before_action :set_list, only: [:show, :edit,:update,:destroy]
  before_action :mine, only: [:edit,:destroy]
  before_action :authenticate_user!, only: [:destroy,:new,:edit]


  def index
    @lists = List.includes(:user).order("created_at ASC")
  end
  def new
    @list = List.new
  end
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end
  def show

  end
 def edit
  end
 end
 def update

  if @list.update(list_params)
      redirect_to root_path
  else
      render :edit
  end
 end
 def destroy

   if @list.destroy
    redirect_to root_path 
   else
    render :show
   end

 end
  private
  def list_params
    params.require(:list).permit( :name, :house, :food, :communication, :utility, :miscellaneous, :beauty_and_clothing, :entertainment, :education, :insurance, :storage, :description).merge(user_id: current_user.id)
  end
  def set_list
    @list = List.find(params[:id])
  end
  def mine
    unless current_user.id == @list.user_id
      render :index
    end
  end