require 'rails_helper'

describe Category do
  it 'clears the category id of all associated expenses when deleted' do
    category = create :category
    expense = create :expense, category: category

    category.destroy
    expect(expense.reload.category_id).to eq nil
  end
end
