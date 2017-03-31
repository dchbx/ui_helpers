require "rails_helper"

describe 'workflow/_radio' do
  before do
    render partial: 'workflow/radio'
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
end
