class CreateTalents < ActiveRecord::Migration
  def change
    create_table :talents do |t|
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :username
      t.string :first_name
      t.string :last_name
      t.string :email
      t.integer :rating
      t.string :password_digest
      t.text :content
      t.text :phone
      t.text :age
      t.text :gender
      t.text :height
      t.text :nationality
      t.text :demo
      t.text :resume
      t.timestamps
    end
  end
end
