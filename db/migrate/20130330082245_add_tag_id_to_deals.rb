class AddTagIdToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :tag_id, :integer
  end
end
