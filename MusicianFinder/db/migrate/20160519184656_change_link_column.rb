class ChangeLinkColumn < ActiveRecord::Migration
  def change
      rename_column :comments, :link_id, :poster_id
  end
end
