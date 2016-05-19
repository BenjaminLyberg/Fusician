class ChangePostColumnType < ActiveRecord::Migration
  def change
      change_column :comments, :poster_id,  :string
  end
end
