class Comment < ApplicationRecord
    belongs_to :account 
    belong_to :post
end
