module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
    # same as @current_user = @current_user || User.find_by(id: session[:user_id]). Avoids hitting db multiple times if current_user appears multiple times on a page.
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def previous_page
    session[:return_to] = URI(request.referer || '').path
  end

end
