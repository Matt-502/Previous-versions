class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all.order(created_at: :desc)
  end

def search
  if params[:q]
    @q = Property.ransack(params[:q])
    @properties = @q.result(distinct: true)
  else
    # @q = Property.ransack(params[:q])
    @properties = Property.all.order(created_at: :desc)
  end
end


  
  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    @prefecture = Prefecture.new
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)
    @property.user_id = current_user.id
    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: '新しく物件登録できました' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, alert: @property.errors.full_messages }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :prefecture_id, :prefecture, :location, :hobby, :structure, :title, :description, :details, :price, :user_id, :image)
    end
end
