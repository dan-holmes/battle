describe Game do
  let(:player1) { double(:player) }
  let(:player2) { double(:player) }

  describe "#attack" do
    it "let one player attack another player" do
      expect(player2).to receive(:deduct_hitpoints)
      subject.attack(player1, player2)
    end
  end
end
