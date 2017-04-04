require "rails_helper"

describe 'workflow/_text_dropdown_text_spec' do

  let(:line) do
    UIHelpers::Workflow::Line.new  'fields' => ['City', 'Zip'], 'values' => ['Select state']
  end
  before do
    render partial: 'workflow/text_dropdown_text', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
  it 'should have dropodown select tag' do
  	expect(rendered).to have_css('select')
  end
  it 'should have input text fields' do
  	expect(rendered).to have_css('input[type=text]')
  end
end
