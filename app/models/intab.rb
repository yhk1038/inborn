class Intab < ActiveRecord::Base
  belongs_to :tab
  has_one :board

  def self.skip_elts
    return ['created_at', 'updated_at', 'id']
  end

  def posts
    self.board.posts
  end
end
