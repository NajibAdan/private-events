class User < ApplicationRecord
    has_many :events, class_name: 'Event', foreign_key: 'creator_id'
    has_many :attendances
    has_many :events_attended, through: :attendances, source: "event"
end
