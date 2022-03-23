class HomeController < ApplicationController
  def index
    @expenses = Expense.includes(:category).order('created_at DESC').page(params[:page])
  end
end
