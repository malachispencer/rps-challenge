describe Player do
  let(:player) { Player.new('Human') }

  describe '#initialize' do
    it 'allows user to set their name' do
      expect(player.name).to eq('Human')
    end
  end

  describe '#choice' do
    it "sets the player's choice in the current round" do
      expect { player.choose('rock') }.to change { player.choice }.from(nil).to(:rock)
    end
  end

  describe '#receive_point' do
    it "adds a point to the Player's score" do 
      expect { player.receive_point }.to change { player.score }.by(1)
    end
  end
end