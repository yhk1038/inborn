class Tab < ActiveRecord::Base
  has_many :intabs


  def self.skip_elts
    return ['created_at', 'updated_at', 'id']
  end
end
