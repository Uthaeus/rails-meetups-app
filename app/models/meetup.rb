class Meetup < ApplicationRecord

    validates_presence_of :title, :description, :location, :date, :time

    belongs_to :user

    mount_uploader :main_image, MeetupUploader
    mount_uploader :thumb_image, MeetupUploader
end
