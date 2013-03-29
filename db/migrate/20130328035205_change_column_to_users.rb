class ChangeColumnToUsers < ActiveRecord::Migration
  def change
  	change_column  :users, :password_digest, :string, :limit => 128
  end
end
