class ThreadForum < ApplicationRecord
  belongs_to :sub_forums
  belongs_to :games
  has_many :comments

  validates :thr_name, presence: true
  validates :thr_views, presence: true
  validates :thr_number_comments, presence: true
end
