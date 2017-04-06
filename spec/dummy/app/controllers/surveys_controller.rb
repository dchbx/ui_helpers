class SurveysController < ApplicationController
  include UIHelpers::WorkflowController

  def new
    render 'workflow/step'
  end

  def step
    attributes = params[:attributes].merge(workflow: { current_step: @current_step.to_i + 1 })
    @model.attributes = survey_params(attributes)
    @model.save!

    render 'workflow/step'
  end

  private
  def survey_params(attributes)
    attributes.permit!
  end

  def find
    Survey.first
  end

  def create
    Survey.new
  end
end
