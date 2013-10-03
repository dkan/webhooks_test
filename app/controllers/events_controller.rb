class EventsController < ApplicationController

  def create
    EasyPost.api_key = ENV['API_KEY']
    event_hash = ActiveSupport::JSON.decode request.body
    event = EasyPost::Util.convert_to_easypost_object(event_hash, ENV['API_KEY'])

    render json: {message: 'Event created...'}, status: 201
  end

end
