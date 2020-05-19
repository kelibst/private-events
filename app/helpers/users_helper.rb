module UsersHelper
  def attendee?
    event = Event.find_by(id: params[:id])
    !event.invitations.where(attendee: current_user).exists?
  end

  def event_not_expired?
    event = Event.find_by(id: params['id'])
    is_expired = event.date <= DateTime.now
    !is_expired
  end
end
