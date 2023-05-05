class AddLocationToMeetups < ActiveRecord::Migration[7.0]
  def change
    add_column :meetups, :location, :string
  end
end
