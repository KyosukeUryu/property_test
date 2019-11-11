class PropertiesController < ApplicationController
  before_action :set_property, only: %i[show edit update destroy]

  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times do
      @property.nearest_stations.build
    end
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path, notice: '登録完了しました'
    else
      render :new
    end
  end

  def show
    if @property.nearest_stations.count == 2
      @nearest_station1 = @property.nearest_stations.first
      @nearest_station2 = @property.nearest_stations.last
    elsif @property.nearest_stations.count == 1
      @nearest_station1 = @property.nearest_stations.first
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :remarks, nearest_stations_attributes:[:id, :route, :name, :on_foot])
  end

  def set_property
    @property = Property.find(params[:id])
  end
end
