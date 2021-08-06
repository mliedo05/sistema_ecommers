class Cupon < ApplicationRecord
  belongs_to :user, optional: true
end
