class AdminController < ApplicationController
  layout 'admin'

  def board
      if params[:id] == 'delete'
          @b = Board.where(id: params[:b]).first
          @b.destroy
          redirect_to '/admin/board'
          return
      else
          @b = Board.where(id: params[:id]).first if params[:id]
          @b = Board.new if @b.nil?
          if params[:mod] == '1'
              skip_elts = ['created_at', 'updated_at', 'id', 'visible']
              Board.attribute_names.each do |a|
                  next if skip_elts.include?(a)
                  eval("@b.#{a} = params[:#{a}]")
              end
              @b.save
          end
      end
  end
end
