require "rails_helper"

describe 'workflow/_dob_ssn_radio_spec' do

  let(:line) do
    UIHelpers::Workflow::Line.new 'fields' => ['DATE OF BIRTH', 'SOCIAL SECURITY (SSN)', 'RE-ENTER SSN'], 
    'values' => [ 'MALE', 'FEMALE']
  end
  before do
    render partial: 'workflow/dob_ssn_radio', locals: { line: line }
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
  
  it 'should have input text fields' do
    expect(rendered).to have_css('input[type=text]')
  end

  it 'has radio buttons' do
    expect(rendered).to have_css('input[type=radio]')
  end
end
