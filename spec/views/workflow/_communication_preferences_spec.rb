require "rails_helper"

describe 'workflow/_communication_preferences' do

  let(:line) do
    UIHelpers::Workflow::Line.new 'text' => ['Tell us about how you prefer to receive notices and other communication'],
    'values' => ['By Mail', 'By Email', 'Both by Email and Mail']
  end
  before do
    render partial: 'workflow/communication_preferences', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
  it 'should have input radio fields' do
    expect(rendered).to have_css('input[type=radio]')
  end
end
