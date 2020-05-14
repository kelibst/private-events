class EventsController < ApplicationController
    before_action :require_user, only:[:new]

    def index
        @events = Event.all
    end

    def new
        @user = current_user
        @event= Event.new
    end

    def create
        @user = current_user
        @event = @user.events.new(event_params)

        if @event.save
            flash[:success] = "Event is created!"
            redirect_to user_path(@event.creator)
        else
            render 'new'
        end
    end

    def show
        @event = Event.find_by(id: params['id'])
    end

    private

    def event_params
        params.require('event').permit(:title,:description,:date,:location)
    end
end