class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 5, maximum: 90 }
  validates :body, presence: true, length: { minimum: 15, maximum: 1000 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy

  def self.ransackable_attributes(auth_object = nil)
    %w[title body user_email user_name]
  end

  def self.ransackable_associations(auth_object = nil)
    %w[comments "notifications user]
  end
end
