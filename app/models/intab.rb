class Intab < ActiveRecord::Base
  belongs_to :tab

  def self.skip_elts
    return ['created_at', 'updated_at', 'id']
  end
  
end
