class PizzasController < ApplicationController
  def new
  end

  def index
    @pizzas = Pizza.all
  end

  def show
    @pizza = Pizza.find(params[:id])
  end

  def update
  end

  def create
    debugger
    @pizza = Pizza.new(pizza_params)
    if @pizza.save
       redirect_to @pizza
    else
       render :new
    end
  end

  def pizza_params
    params.require(:pizza).permit(:name, :diameter, :price)
  end  
end
