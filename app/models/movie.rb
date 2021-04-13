require 'securerandom'

class Movie < ApplicationRecord
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
  validates :title, :text, presence: true
  validates :text, length: { minimum: 5 }
  belongs_to :admin

  before_create :set_uuid

  private

  def set_uuid
    self.uuid = SecureRandom.uuid
  end
end
