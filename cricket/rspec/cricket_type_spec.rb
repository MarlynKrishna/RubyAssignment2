require_relative '../cricket_type'
describe CricketType do
  let (:test) {CricketType.new}
  it "chech the crickrt type nd balls to play" do
    expect(test.type(:type)).to eq($balls)
  end
end