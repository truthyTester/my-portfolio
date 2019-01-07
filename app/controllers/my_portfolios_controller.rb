class MyPortfoliosController < ApplicationController
  layout "my_portfolio"

  def index
    @my_portfolio = MyPortfolio.all
  end

  def new
    @my_portfolio = MyPortfolio.new
    3.times {@my_portfolio.technologies.build}
  end

  def create
    @my_portfolio = MyPortfolio.new(portfolio_params)

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
      if @my_portfolio.update(portfolio_params)
        format.html { redirect_to (my_portfolios_path), notice: 'The record was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @my_portfolio = MyPortfolio.find(params[:id])
  end

  def destroy
    @my_portfolio = MyPortfolio.find(params[:id])

    @my_portfolio.destroy

    respond_to do |format|
      format.html { redirect_to my_portfolios_url, notice: 'Portfolio was successfully destroyed.' }
    end
  end

  private

  def portfolio_params
    params.require(:my_portfolio).permit(:title,
                                         :subtitle,
                                         :body,
                                         technologies_attributes: [:name]
                                        )
  end
end
