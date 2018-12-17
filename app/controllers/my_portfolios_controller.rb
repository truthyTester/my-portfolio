class MyPortfoliosController < ApplicationController
  def index
    @my_portfolio = MyPortfolio.all
  end
  def new
    @my_portfolio = MyPortfolio.new
  end
  def create
    @my_portfolio = MyPortfolio.new(params.require(:my_portfolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @my_portfolio.save
        format.html { redirect_to (my_portfolios_path), notice: 'Your portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
  def edit
    @my_portfolio = MyPortfolio.find(params[:id])
  end
  def update
    @my_portfolio = MyPortfolio.find(params[:id])
    respond_to do |format|
      if @my_portfolio.update(params.require(:my_portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to (my_portfolios_path), notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
  def show
    @my_portfolio = MyPortfolio.find(params[:id])
  end
end
