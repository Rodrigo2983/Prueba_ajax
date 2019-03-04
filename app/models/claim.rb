class Claim < ApplicationRecord
    belong_to :company
    belong_to :user
end
