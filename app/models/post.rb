class Post < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }
  validates :image, presence: true
  validates :caption, presence: true, length: { maximum: 100 }
end
