require 'rails_helper'

RSpec.describe Quest, :type => :model do
  context 'start page' do
    let!(:category) { Category.new name: 'Sport' }
    let(:quest) { Quest.new title: 'Test-Quest', description: "Führt diesen Test-Quest durch", points: 250 }
  end

  it 'points should be between 10 an 300' do
    quest = Quest.new title: 'Test-Quest', description: "Führt diesen Test-Quest durch", points: 350, categories: 'Sport'

    quest.points(350)
    expect(quest).to_not be_valid

    quest.points = 50
    expect(quest).to be_valid
  end
end
