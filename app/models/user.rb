class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :created_activities, class_name: "Activity", foreign_key: "user_id"
  has_and_belongs_to_many :activities_attending, class_name: "Activity", join_table: "activities_users"
end
