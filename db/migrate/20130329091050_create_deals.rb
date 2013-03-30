class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.string :title
      t.string :image_path
      t.decimal :price, :precision => 8, :scale => 2
      t.string :real_path
      t.timestamps
    end
  end
end
