class Admin::ItemsController < ApplicationController
#ceforeアクション追加予定
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])  end

  def edit
    @item = Item.find(params[:id])
  end

  def new
      @item = Item.new
      @genres = Genre.all
  end

  def create
    @item = Item.new(item_params)
   if @item.save
    redirect_to admin_items_path
   else
    render :new
   end
  end

  def update
    item = Item.find(params[:id])
    item.update(item_params)
    redirect_to admin_item_path
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to admin_items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :image, :introduction, :price, :is_active, :genre_id)
  end
end