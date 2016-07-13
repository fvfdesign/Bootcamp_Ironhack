module SessionsHelper


  def current_user #returns an object
    @current_user ||= User.find_by(id: session[:user_id])
  end
 
  def logged_in?
    !current_user.nil?# if is nil returns no legged
  end



	
end





#explicacion de current_user
#a = 7;
#a ||= 9; #value of a is 7