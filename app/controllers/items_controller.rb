# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.where(category_id: params[:category_id])
    @categories = Category.all
  end

  def show
    @item = Item.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def new
    @item = Item.new
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.js
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to :root_path
  end

  private

  def item_params
    params.require(:items).permit(:title, :description, :price, :category_id, :image_url, :user_id)
  end
end
