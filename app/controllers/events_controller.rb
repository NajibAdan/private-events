class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create 
    user = User.find(session[:user_id])
    @event = user.events.build(event_params)
    if @event.save 
      redirect_to @event 
    else
      render 'new'
    end
  end
  def show 
    @event = Event.find(params[:id])
  end
  def index 
    @events = Event.all
  end
  private 
  def event_params
    params.require(:event).permit(:title,:date,:description)
  end
end
