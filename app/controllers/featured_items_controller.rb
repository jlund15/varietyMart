class FeaturedItemsController < ApplicationController
  before_action :set_featured_item, only: [:show, :edit, :update, :destroy]

  # GET /featured_items
  # GET /featured_items.json
  def index
    @featured_items = FeaturedItem.all
  end

  # GET /featured_items/1
  # GET /featured_items/1.json
  def show
  end

  # GET /featured_items/new
  def new
    @featured_item = FeaturedItem.new
  end

  # GET /featured_items/1/edit
  def edit
  end

  # POST /featured_items
  # POST /featured_items.json
  def create
    @featured_item = FeaturedItem.new(featured_item_params)

    respond_to do |format|
      if @featured_item.save
        format.html { redirect_to @featured_item, notice: 'Featured item was successfully created.' }
        format.json { render :show, status: :created, location: @featured_item }
      else
        format.html { render :new }
        format.json { render json: @featured_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_items/1
  # PATCH/PUT /featured_items/1.json
  def update
    respond_to do |format|
      if @featured_item.update(featured_item_params)
        format.html { redirect_to @featured_item, notice: 'Featured item was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_item }
      else
        format.html { render :edit }
        format.json { render json: @featured_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_items/1
  # DELETE /featured_items/1.json
  def destroy
    @featured_item.destroy
    respond_to do |format|
      format.html { redirect_to featured_items_url, notice: 'Featured item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_item
      @featured_item = FeaturedItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_item_params
      params.require(:featured_item).permit(:image, :subtitle, :body)
    end
end
