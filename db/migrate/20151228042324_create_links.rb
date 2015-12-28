class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :other_profile
      t.references :talent
    end
  end
end
