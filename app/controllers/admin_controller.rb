class AdminController < ApplicationController
  before_action :verify_request_type
  layout 'admin'

  def post
    @b = Post.where(id: params[:id]).first
    if @b.nil?
      flash[:error] = '해당 게시글은 존재하지 않습니다.'
      redirect_to :back
      return
    end
  end

  def posts
    @b = Board.where(id: params[:id]).first
    if @b.nil?
      flash[:error] = '해당 게시판은 존재하지 않습니다.'
      redirect_to :back
      return
    end

    @p = @b.posts
  end

  def user_manage
    @u = User.where(id: params[:id]).first if params[:id]
    @u = User.new if @u.nil?

    case request.method_symbol
    when :get
      if params[:id] == 'delete'
        @u = User.where(id: params[:target]).first
        if @u.nil?
          flash[:error] = '해당 사용자가 존재하지 않습니다.'
        else
          flash[:alert] = '해당 사용자를 삭제하였습니다.'
          @u.destroy
        end
        redirect_to '/admin/user'
      elsif params[:id]
        if @u.nil?
          flash[:error] = '해당 사용자가 존재하지 않습니다.'
          redirect_to '/admin/user'
        end
      else
        @u = User.new
      end
    when :post
      skip_elts = User.skip_elts
      User.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@u.#{a} = params[:#{a}]")
      end
      @u.save
      flash[:alert] = @u.email.to_s + ' 사용자가 성공적으로 저장되었습니다.'
      redirect_to '/admin/user'
    when :options
      # Header will contain a comma-separated list of methods that are supported for the resource.
      headers['Access-Control-Allow-Methods'] = allowed_methods.map { |sym| sym.to_s.upcase }.join(', ')
      head :ok
    end
  end

  def board
    @b = Board.where(id: params[:id]).first if params[:id]

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
      elsif params[:id]
        if @b.nil?
          flash[:error] = '해당 게시판이 존재하지 않습니다.'
          redirect_to '/admin/board'
        end
      else
        @b = Board.new
      end
    when :post
      @b = Board.new if @b.nil?
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

  def tab
    @b = Tab.where(id: params[:id]).first if params[:id]

    case request.method_symbol
    when :get
      if params[:id] == 'delete'
        @b = Tab.where(id: params[:target]).first
        if @b.nil?
          flash[:error] = '해당 탭이 존재하지 않습니다.'
        else
          flash[:alert] = '해당 탭을 삭제하였습니다.'
          @b.destroy
        end
        redirect_to '/admin/tab'
      elsif params[:id]
        if @b.nil?
          flash[:error] = '해당 탭이 존재하지 않습니다.'
          redirect_to '/admin/tab'
        end
      else
        @b = Tab.new
      end
    when :post
      skip_elts = Tab.skip_elts
      Tab.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@b.#{a} = params[:#{a}]")
      end
      @b.save
      flash[:alert] = @b.title.to_s + ' 탭이 성공적으로 저장되었습니다.'
      redirect_to '/admin/tab'
    when :options
      # Header will contain a comma-separated list of methods that are supported for the resource.
      headers['Access-Control-Allow-Methods'] = allowed_methods.map { |sym| sym.to_s.upcase }.join(', ')
      head :ok
    end
  end

  def intab
    @b = Intab.where(id: params[:id]).first if params[:id]

    case request.method_symbol
    when :get
      if params[:id] == 'delete'
        @b = Intab.where(id: params[:target]).first
        if @b.nil?
          flash[:error] = '해당 인탭이 존재하지 않습니다.'
        else
          flash[:alert] = '해당 인탭을 삭제하였습니다.'
          tab_id = @b.tab.id
          @b.destroy
        end
        redirect_to '/admin/intab/new/' + tab_id.to_s
      elsif params[:id] == 'new'
        @t = Tab.where(id: params[:target]).first
        if @t.nil?
          flash[:error] = '존재하지 않는 탭의 인탭 생성시도'
          redirect_to '/admin/tab'
          return
        end
      elsif params[:id]
        if @b.nil?
          flash[:error] = '해당 인탭이 존재하지 않습니다.'
          redirect_to '/admin/tab/'
        end
        @t = @b.tab unless @b.tab_id.nil?
      else
        @b = Intab.new
      end
    when :post
      skip_elts = Intab.skip_elts
      Intab.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@b.#{a} = params[:#{a}]")
      end
      @b.save
      unless params[:board_id].empty?
        b = Board.where(id: params[:board_id]).first
        if b.nil?
          flash[:error] = '연결실패 : 존재하지 않는 게시판입니다'
        else
          b.intab_id = @b.id
          b.save
        end
      end
      flash[:alert] = @b.title.to_s + ' 인탭이 성공적으로 저장되었습니다.'
      redirect_to '/admin/intab/new/' + @b.tab_id.to_s
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
