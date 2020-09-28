class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.decimal :total, null: false
      t.belongs_to :category, foreign_key: true
      t.date :date
      t.text :note
      t.string :title
      t.timestamps
    end
  end
end
