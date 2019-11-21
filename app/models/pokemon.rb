class Pokemon < ApplicationRecord
    has_many :captures
    has_many :users, through: :captures
end
