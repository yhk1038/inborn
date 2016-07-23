class Intab < ActiveRecord::Base
  belongs_to :tab
  has_one :board
  has_one :maintab

  def self.skip_elts
    return ['created_at', 'updated_at', 'id']
  end

  def posts
    if self.board.nil?
      return []
    end
    self.board.posts
  end
end
