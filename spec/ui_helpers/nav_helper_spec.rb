require_relative '../spec_helper'

describe UIHelpers::NavHelper do
  let(:view) do
    <<-VIEW
      <%= nav do |n| %>
        <%= n.pill :first, 'First', active: true %>
        <%= n.pill :second, 'Second' %>
      <% end %>
    VIEW
  end

  subject { render(view).with UIHelpers::NavHelper }

  it 'has an outer ul with a nav class' do
    expect(subject).to have_css('ul.nav')
  end

  it 'sets the active pill to the first li' do
    expect(subject).to have_css('li.active:first-child')
  end
end
