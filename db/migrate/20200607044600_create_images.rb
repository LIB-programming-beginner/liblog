class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.text :image_url, null: false
      t.references :post, null: false
      t.timestamps
    end
  end
end
