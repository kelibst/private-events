module UsersHelper
    def attendee?
        event = Event.find_by(id: params[:id])
        return !event.invitations.where(attendee: current_user).exists?
    end
end
