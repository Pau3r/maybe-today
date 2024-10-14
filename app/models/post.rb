class Post < ApplicationRecord
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, -> { order(created_at: :desc, updated_at: :desc) }
end
