class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :body, presence: true, length: { in: 2..255 }
end
