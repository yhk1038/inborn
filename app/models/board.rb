class Board < ActiveRecord::Base
    has_many :posts
    belongs_to :intab

    def self.skip_elts
      return ['created_at', 'updated_at', 'id', 'visible']
    end
end
