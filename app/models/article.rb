class Article < ActiveRecord::Base
  validates :title, presence: true, uniqueness: { case_sensitive: false},
  length: { minimum: 3, maximum: 20}

  validates :description, presence: true, length: { minimum: 3, maximum: 80}


end
