class ChangeTimeFieldForMeetups < ActiveRecord::Migration[7.0]
  def change
    remove_column :meetups, :time
    remove_column :meetups, :date

    add_column :meetups, :time, :datetime
    add_column :meetups, :date, :datetime
  end
end
