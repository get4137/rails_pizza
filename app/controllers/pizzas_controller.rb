class PizzasController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def new
    @pizzas = Pizza.all
    @pizza = Pizza.new
  end

  def edit
    @pizza = Pizza.find(params[:id])
  end

  def create
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
      redirect_to @pizza
    else
      render 'new'
    end
  end

  def update
    @pizza = Pizza.find(params[:id])
    if @pizza.update(pizza_params)
      redirect_to @pizza
    else
      render 'edit'
    end
  end

  def destroy
    @pizza = Pizza.find(params[:id])
    @pizza.destroy
    redirect_to pizzas_path
  end

  private

  def pizza_params
    params.require(:pizza).permit(:title,
                                  :description,
                                  :price,
                                  :size,
                                  :is_spicy,
                                  :is_veg,
                                  :best_offer,
                                  :path_to_image)
  end

end