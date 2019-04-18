# frozen_string_literal: true

class ItemsController < ApplicationController
  include Cart
  before_action :set_current_cart

  def index
    @items = Item.all
    @categories = Category.all
  end

  def show
    p @item = Item.find(params[:id])
    p @category = Category.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
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
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy; end

  private

  def item_params
    params.require(:items).permit(:title, :description, :price, :category_id, :image_url, :user_id)
  end

  def set_current_cart
    @cart = current_cart
  end
end
