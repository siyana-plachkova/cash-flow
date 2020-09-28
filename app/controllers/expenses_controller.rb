class ExpensesController < ApplicationController

  def create
    Expense.create! expense_params

    redirect_to root_path
  end

  private

  def expense_params
    params.require(:expense).permit(:date, :total, :category_id, :note, :title)
  end
end