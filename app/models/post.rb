class Post < ApplicationRecord
    belongs_to :account
    has_many  :comments
    # has_many_attached :images

     has_one_attached:image 
end
