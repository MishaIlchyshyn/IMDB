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
  belongs_to :admin
end
