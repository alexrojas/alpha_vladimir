class Article < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true, uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 30}

  validates :description, presence: true, length: { minimum: 3, maximum: 2000}

  validates :user_id, presence: true


end
