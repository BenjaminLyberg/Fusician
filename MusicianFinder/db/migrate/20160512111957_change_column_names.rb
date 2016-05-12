class ChangeColumnNames < ActiveRecord::Migration
  def change
      rename_column :users, :first_name, :username
      rename_column :users, :last_name, :full_name
  end
end
