class CreateCatController < ApplicationController
  def index
    @cat = CreateCat.all
  end

  def show
    @cat = CreateCat.find(params[:id])
  end

  def new
    @cat = CreateCat.new
  end

  def create
    @cat = CreateCat.new(cat_params)

    if @cat.save
      redirect_to create_cat_index_path
    else
      render :new
    end
  end

  def edit
    @cat = CreateCat.find(params[:id])
  end

  def update
    @cat = CreateCat.find(params[:id])
    if @cat.update(cat_params)
      redirect_to create_cat_index_path
    else
      render :edit
    end
  end

  def destroy
    @cat = CreateCat.find(params[:id])
    @cat.destroy
    redirect_to create_cat_index_path, status: :see_other
  end

  private

  def cat_params
    params.require(:create_cat).permit(
      :image, 
      :name,
      :sex, 
      :description, 
      :adopted, 
      :microchip_number
      )
  end
end
