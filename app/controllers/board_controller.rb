class BoardController < ApplicationController
  # layout 'home'

  # REPLY CRUD
  # READ
  # Input > id : Post의 id
  # Output > @p : 해당 Post
  #          @r : 해당 Post의 덧글들
  def reply_read
    @p = Post.where(id: params[:id]).first
    if @p.nil?
      flash[:error] = '잘못된 게시물입니다.'
      redirect_to :back
      return
    end
    @r = @p.replies
  end

  # CREATE
  # Input > 입력값들
  # Output > @r : 해당 덧글
  def reply_create
    @r = Reply.new
    skip_elts = Reply.skip_elts
    Reply.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@r.#{a} = params[:#{a}]")
    end
    @r.user_id = current_user.id
    @r.save
  end

  # DELETE
  # Input > id : 해당 덧글의 id
  # Output > @r : 해당 덧글
  def reply_delete
    @r = Reply.where(id: params[:id]).first
    if @r.nil?
      flash[:error] = '잘못된 덧글입니다.'
      redirect_to :back
      return
    end
    @r.delete
  end

  # UPDATE
  # Input > 입력값들
  # Output > @r : 해당 덧글
  def reply_update
    @r = Reply.where(id: params[:id]).first
    if @r.nil?
      flash[:error] = '잘못된 덧글입니다.'
      redirect_to :back
      return
    end
    skip_elts = ['created_at', 'updated_at', 'id']
    Reply.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@r.#{a} = params[:#{a}]")
    end
    @r.save
  end

  # POST CURD
  # READ
  # Input > id : 해당 포스트의 id
  # Output > @p : 해당 포스트
  def post_read
    @p = Post.where(id: params[:id]).first
    if @p.nil?
      flash[:error] = '잘못된 게시물입니다.'
      redirect_to :back
      return
    end
  end

  # CREATE
  # Input > 입력값들
  # Output > @p : 해당 포스트
  def post_create
    @p = Post.new
    skip_elts = Post.skip_elts
    Post.attribute_names.each do |a|
        next if skip_elts.include?(a)
        eval("@p.#{a} = params[:#{a}]")
    end
    @p.user_id = current_user.id
    @p.save
  end

  # DELETE
  # Input > id : 해당 Post의 id
  # Output > @p : 해당 Post
  def post_delete
    @p = Post.where(id: params[:id]).first
    if @p.nil?
      flash[:error] = '잘못된 게시물입니다.'
      return
    else
      @p.delete
    end
  end

  # UPDATE
  # Input > 입력값들
  # Output > @p : 해당 Post
  def post_update
    @p = Post.where(id: params[:id]).first
    if @p.nil?
      flash[:error] = '잘못된 게시물입니다.'
      return
    else
      skip_elts = Post.skip_elts
      Post.attribute_names.each do |a|
          next if skip_elts.include?(a)
          eval("@p.#{a} = params[:#{a}]")
      end
      @p.save
    end
  end
end
