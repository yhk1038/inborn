class Reply < ActiveRecord::Base
    belongs_to :post
    belongs_to :user

    def self.skip_elts
      return ['created_at', 'updated_at', 'id', 'user_id']
    end
end
