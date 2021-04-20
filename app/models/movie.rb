require 'securerandom'

class Movie < ApplicationRecord
  extend FriendlyId

  friendly_id :title, use: :slugged
  enum category:
            [ :comedy,
              :militants,
              :horrors,
              :novels,
              :fantasy,
              :historical,
              :cartoons,
              :thrillers,
              :detectives,
              :artistic,
              :biographical ]
  validates :slug, uniqueness: true
  validates :slug, :text, presence: true
  validates :text, length: { minimum: 5 }
  belongs_to :admin
end
