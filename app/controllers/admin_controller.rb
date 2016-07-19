class AdminController < ApplicationController
  before_action :verify_request_type
  layout 'admin'

  def user
    @u = User.where(id: params[:id]).first if params[:id]
    @u = User.new if @u.nil?

    case request.method_symbol
    when :get
      if params[:id] == 'delete'
        @u = User.where(id: params[:target]).first
        if @u.nil?
          flash[:error] = '해당 사용자가 존재하지 않습니다.'
        else
          flash[:alert] = '해당 사용자을 삭제하였습니다.'
          @u.destroy
        end
        redirect_to '/admin/board'
      end
    when :post
      skip_elts = User.skip_elts
      User.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@u.#{a} = params[:#{a}]")
      end
      @u.save
      flash[:alert] = @u.title.to_s + ' 게시판이 성공적으로 저장되었습니다.'
      redirect_to '/admin/user'
    when :options
      # Header will contain a comma-separated list of methods that are supported for the resource.
      headers['Access-Control-Allow-Methods'] = allowed_methods.map { |sym| sym.to_s.upcase }.join(', ')
      head :ok
    end
  end

  def board
    @b = Board.where(id: params[:id]).first if params[:id]
    @b = Board.new if @b.nil?

    case request.method_symbol
    when :get
      if params[:id] == 'delete'
        @b = Board.where(id: params[:target]).first
        if @b.nil?
          flash[:error] = '해당 게시판이 존재하지 않습니다.'
        else
          flash[:alert] = '해당 게시판을 삭제하였습니다.'
          @b.destroy
        end
        redirect_to '/admin/board'
      end
    when :post
      skip_elts = Board.skip_elts
      Board.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@b.#{a} = params[:#{a}]")
      end
      @b.save
      flash[:alert] = @b.title.to_s + ' 게시판이 성공적으로 저장되었습니다.'
      redirect_to '/admin/board'
    when :options
      # Header will contain a comma-separated list of methods that are supported for the resource.
      headers['Access-Control-Allow-Methods'] = allowed_methods.map { |sym| sym.to_s.upcase }.join(', ')
      head :ok
    end
  end

  def verify_request_type
    unless allowed_methods.include?(request.method_symbol)
      head :method_not_allowed # 405
    end
  end

  def allowed_methods
    %i(get post options)
  end
end
