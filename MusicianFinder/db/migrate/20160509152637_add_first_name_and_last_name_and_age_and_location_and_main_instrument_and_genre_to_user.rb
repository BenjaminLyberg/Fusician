class AddFirstNameAndLastNameAndAgeAndLocationAndMainInstrumentAndGenreToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :location, :string
    add_column :users, :main_instrument, :string
    add_column :users, :genre, :string
  end
end
