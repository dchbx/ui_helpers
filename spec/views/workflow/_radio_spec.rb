require "rails_helper"

describe 'workflow/_radio' do
  let(:line) do
    UIHelpers::Workflow::Line.new 'text' => 'Yo?', 'values' => ['Yo!', 'No!']
  end

  before do
    render partial: 'workflow/radio', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end

  it 'has radio buttons' do
  	expect(rendered).to have_css('input[type=radio]')
  end
end
