class Activity < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "events_users"
  has_many :activity_records
end
