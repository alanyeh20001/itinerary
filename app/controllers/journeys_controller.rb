class JourneysController < ApplicationController
  def index
    @journeys = Journey.includes(:stories)
  end

  def show
    @journey = Journey.find(params[:id])
    @stories = @journey.stories
  end

  def story_reveal
    render layout: false
  end
end
