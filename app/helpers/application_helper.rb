module ApplicationHelper
  def is_admin?
    return false unless user_signed_in?
    return true if current_user.role == 3
  end

  def can_read?(post)
    board = post.board
    unless user_signed_in?
      return true if board.a_read == 1
      return false
    end
    return true if current_user.is_admin?
    if post.is_secret == 1
      return true if post.user_id == current_user.id
      return false
    end
    return board.a_read <= current_user.role
  end

  def can_write?(board)
    return false unless user_signed_in?
    return true if current_user.is_admin?
    return board.a_write <= current_user.role
  end

  def can_list?(board)
    unless user_signed_in?
      return true if board.a_list == 1
      return false
    end
    return true if current_user.is_admin?
    return board.a_list <= current_user.role
  end

  def can_modify?(post)
    return false unless user_signed_in
    return true if current_user.is_admin?
    return true if post.user_id == current_user.id
  end
end
