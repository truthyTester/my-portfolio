class MyPortfoliosController < ApplicationController
  def index
    @my_portfolios = MyPortfolio.all
  end
end
