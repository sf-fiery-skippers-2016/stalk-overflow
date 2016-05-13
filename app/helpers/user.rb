helpers do

  # Use this to redirect if not loged in or get @current_user info
  def logged_in?
    if session[:id]
      return @current_user = User.find(session[:id])
    else
      redirect '/login'
    end
  end

end
