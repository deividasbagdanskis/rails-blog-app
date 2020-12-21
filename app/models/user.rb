# frozen_string_literal: true

# Blog's user
class User < ApplicationRecord
  has_secure_password
  has_many :comments, dependent: :destroy

  validates :email, presence: true, uniqueness: true
end
