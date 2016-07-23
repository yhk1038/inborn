class Maintab < ActiveRecord::Base
  belongs_to :intab

    def intab
      i = Intab.where(id: self.intab_id).first
      i = Intab.new if i.nil?
      return i
    end
end
