class Meetup < ApplicationRecord

    validates_presence_of :title, :description, :location, :date, :time

    belongs_to :user
end
