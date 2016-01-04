class AddQuoteToTalents < ActiveRecord::Migration
  def change
    add_column :talents, :quote, :string
  end
end
