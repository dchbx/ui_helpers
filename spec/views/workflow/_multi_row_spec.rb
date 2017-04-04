require "rails_helper"

describe 'workflow/_multi_row' do
  let(:line) do
    UIHelpers::Workflow::Line.new 'fields' => ['first_name', 'last_name', 'middle_name']
  end

  before do
    render partial: 'workflow/multi_row', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end

  it 'has dropdown list' do
    expect(rendered).to have_css('input[type=text]')
  end

end

