class UserTask < ApplicationRecord
  scope :today, -> { where('created_at > ?', Date.today)}
  belongs_to :user
  belongs_to :task
end
