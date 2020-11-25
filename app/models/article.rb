class Article < ApplicationRecord
  has_one_attached :image_file
  validates :title, presence: true, length: { in: 10..85 }
  validates :author, presence: true, length: { minimum: 5 }
  validates :excerpt, presence: true, length: { in: 15..175 }
  validates :text, presence: true
  validates :image_file, presence: true

  def self.search(search)
    if search
      self.all.where('lower(title) LIKE ?', "%#{search}%")
    else
      self.all
    end
  end
end
