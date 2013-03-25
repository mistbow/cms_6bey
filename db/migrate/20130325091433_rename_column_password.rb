class RenameColumnPassword < ActiveRecord::Migration
	def up
		change_table :users do |t|
			t.rename :password, :password_digest
		end
	end

	def down
		change_table :users do |t|
			t.rename :password_digest, :password
		end
	end
end
