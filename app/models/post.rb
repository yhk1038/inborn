class Post < ActiveRecord::Base
    has_many :replies
    belongs_to :user
    belongs_to :board
    mount_uploader :img1, ImageUploader
    mount_uploader :img2, ImageUploader
    mount_uploader :file1, ImageUploader
    mount_uploader :file2, ImageUploader

    def self.skip_elts
      return ['created_at', 'updated_at', 'id', 'user_id']
    end
    
    def self.board
      return Board.find(self.board_id)
    end
end
