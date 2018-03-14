class SubForum < ApplicationRecord
  belongs_to :games
  has_many :threads_forums

  validates :sub_for_name, presence: true
  validates :sub_for_description, presence: true
end
