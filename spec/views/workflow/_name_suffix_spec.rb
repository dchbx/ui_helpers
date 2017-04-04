require "rails_helper"

describe 'workflow/_name_suffix_spec' do

  let(:line) do
    UIHelpers::Workflow::Line.new 'fields' => ['FIRST NAME', 'LAST NAME', 'MIDDLE NAME'], 
    'values' => [ 
        'Jr',
        'Sr',
        'Mr']
  end
  before do
    render partial: 'workflow/name_suffix', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
  
  it 'should have input text fields' do
    expect(rendered).to have_css('input[type=text]')
  end

  it 'should have dropdown select tag' do
    expect(rendered).to have_css('select')
  end
end
