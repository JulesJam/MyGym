class Activity < ApplicationRecord
  belongs_to :creator, class_name: "User", foreign_key: "user_id"

  has_and_belongs_to_many :attendees,  class_name: "User", join_table: "activities_users"
  has_many :activity_records

  validates_numericality_of :number_of_places
  mount_uploader :image, ActivityImageUploader

  def places_taken
    attendees.size
  end

  def places_available
    number_of_places - places_taken
  end
end
