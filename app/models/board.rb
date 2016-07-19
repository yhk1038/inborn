class Board < ActiveRecord::Base
    has_many :posts

    def self.skip_elts
      return ['created_at', 'updated_at', 'id']
    end
end
