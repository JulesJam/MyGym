class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :created_activities, class_name: "Activity", foreign_key: "user_id"
  has_and_belongs_to_many :activities_attending,-> { distinct }, class_name: "Activity", join_table: "activities_users"
  after_initialize :set_default

  has_many :activity_records, through: :activities

  has_many :photos

  mount_uploader :image, UserImageUploader

  def set_default
    self.admin_level ||= 1
    self.total_visits = 0
    self.user_image = '/images/placeholder.png'
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def member_type (current_user)
    case current_user.admin_level
    when 1
      "Member"
    when 2
      "Personal Trainer"
    when 3
      "Admin User"
    when 4
      "Super User"
    end
  end

  def encouragement_icon_total(current_user)
    if current_user.total_visits == 0
      "😡"
    elsif current_user.total_visits > 3
      "🤔"
    elsif current_user.total_visits > 8
      "😊"
    elsif current_user.total_visits > 10
      "😘"
    end
  end

  def encouragement_icon_classes (classes)
    if classes == 0
      "😡"
    elsif classes >3
      "🤔"
    elsif classes > 8
      "😊"
    elsif classes > 10
      "😘"
    end
  end

  
end
