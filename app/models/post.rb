# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true, length: { minimum: 2 }
  validates :body, presence: true, length: { in: 5..100 }
  validates :views, presence: true , numericality: { only_integer: true }
end
