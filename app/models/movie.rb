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
  validates :title, :text, length: { minimum: 5 }
  belongs_to :admin
end
