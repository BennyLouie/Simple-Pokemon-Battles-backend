class Pokemon < ApplicationRecord
    has_many :captures, dependent: :destroy
    has_many :users, through: :captures

end
