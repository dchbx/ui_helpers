class SurveysController < ApplicationController
  include UIHelpers::WorkflowController

  def new
    render 'workflow/step'
  end

  private
  def find
    Survey.first
  end

  def create
    Survey.new
  end
end
