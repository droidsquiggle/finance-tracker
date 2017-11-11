class StocksController < ApplicationController
  def search
    if params[:stock]
      @stock = Stock.find_by_ticker(params[:stock])
      # if we've already looked up the stock then its already stored in the @stock variable from the above line
      # otherwise it will lookup the stock and store it in the table
      @stock ||= Stock.new_from_lookup(params[:stock])
    end
    
    # if we get a stock
    if @stock
      render partial: 'lookup'
    else
      render status: :not_found, nothing: true
    end
  end
end