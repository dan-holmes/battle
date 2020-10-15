describe Player do
  let(:player1) { Player.new("Dan") }
  let(:player2) { Player.new("Otis") }

  describe "#name" do
    it "returns its name" do
      expect(player1.name).to eq "Dan"
    end
  end

  describe '#hitpoints' do
    it 'returns the hitpoints' do
      expect(player1.hitpoints).to eq described_class::DEFAULT_HITPOINTS
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { player2.deduct_hitpoints }.to change { player2.hitpoints }.by(-20)
    end
  end
end
