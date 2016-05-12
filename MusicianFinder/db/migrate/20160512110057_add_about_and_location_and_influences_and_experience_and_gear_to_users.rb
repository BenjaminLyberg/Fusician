class AddAboutAndLocationAndInfluencesAndExperienceAndGearToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :text
    add_column :users, :influences, :text
    add_column :users, :experience, :text
    add_column :users, :gear, :text
  end
end
