class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :content
      t.integer :node_id
      t.integer :user_id
      t.integer :read_count

      t.timestamps
    end
  end
end
