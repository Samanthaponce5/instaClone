class Comment < ApplicationRecord
    belongs_to :account , optional: true
    belongs_to :post, optional: true

    # validates_presence_of :comment
    # validates_presence_of :account_id
    # validates_presence_of :post_id

    # attr_accessor :return_to 

    # after_create :comment_counter
    # after_destroy :comment_decrease_counter

    # private

    # def comment_counter
    #     Post.find(self.post_id).increment(:total_comment_count).save
    # end

    # def comment_decrease_counter
    #     Post.find(self.post_id).decrement(:total_comment_count).save
    # end

end
