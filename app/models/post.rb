class Post < ActiveRecord::Base
    has_many :replies
    belongs_to :user
    belongs_to :board

    def self.skip_elts
      return ['created_at', 'updated_at', 'id', 'user_id']
    end
end
