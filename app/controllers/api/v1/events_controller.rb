class Api::V1::EventsController < ApplicationController
  before_action :find_event, only: [:show, :update, :destroy]

    # GET /events
    def index
      @events = Event.all
      render json: @events
    end

    # PUT /events/:id
    def update
      @event.update(event_params)
      if @event.save
        render json: @event, status: :accepted
      else
        render json: { errors: @event.errors.full_messages }, status: :unprocessible_entity
      end
    end

    private

    def event_params
      params.permit(:title, :description, :attendee_limit, :total_cost)
    end

    def find_event
      @event = Event.find(params[:id])
    end

end
