module SessionsHelper

  def log_in(user)
    session[:person_id] = user.id
  end

  # Returns the current logged-in user (if any).
  def current_person
    @current_person ||= Person.find_by_id(session[:person_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_person.nil?
  end

  # Logs out the current user.
  def log_out
    session.delete(:person_id)
    @current_person = nil
  end
end
