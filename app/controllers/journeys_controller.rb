class JourneysController < ApplicationController
  def index
    @journeys = Journey.includes(:stories)
  end
end
