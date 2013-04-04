class AddCaptionToDeal < ActiveRecord::Migration
  def change
    add_column :deals, :caption, :text
  end
end
