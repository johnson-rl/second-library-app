module SessionsHelper

  def login user
    session[:id] = user.id
    @current_user = user
  end

  def logout
    session[:id] = nil
    @current_user = nil
  end

  def current_user
    @current_user ||= User.find_by_id(session[:id])
  end

end
