require "rails_helper"

describe 'workflow/_dropdown' do
  before do
    render partial: 'workflow/dropdown'
  end

  it 'renders' do
    expect(rendered).to_not be_nil
  end
end
