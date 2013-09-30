class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create

    event_hash = ActiveSupport::JSON.decode params[:event]
    event = Event.new(
      description: event_hash['description'],
      previous_attributes: event_hash['previous_attributes'],
      public_id: event_hash['id'],
      status: event_hash['result']['status']
    )

    if event.save!
      render json: {message: 'Event saved...'}, status: 201
    else
      render json: {message: 'Event save error.'},  status: 400
    end

  end

end
