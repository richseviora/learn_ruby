require 'rspec'
require './game.rb'

describe Game do
  let (:game) { Game.new }

  it "should score 300 for a game" do
    score = 12.times.map { 10 }
    expect(game.score(score)).to be eq(300)
  end

  it "should score 0 for a gutter game" do
    score = 12.times.map { 0 }
    expect(game.score(score)).to eq(0)
  end

  it "should score 20 for a game of all ones"  do
    score = 20.times.map { 1 }
    expect(game.score(score)).to eq(20)
  end

  it "should score a 20 when a 5 is thrown after a spare" do
    score = [5,5,5] + 17.times.map { 0 }
    expect(game.score(score)).to eq(20)
  end

  it "should score a 24 when a strike is followed by a 3 and 4" do
    score = [10,3,4] + 17.times.map { 0 }
    expect(game.score(score)).to eq(24)
  end

  it "should score 10 when a strike is followed by two gutter balls" do
    score = [10] + 19.times.map { 0 }
    expect(game.score(score)).to eq(10)
  end

  it "should score 20 when a gutter is followed by rolls of 10 and 5 pins" do
    score = [0,10,5] + 17.times.map { 0 }
    expect(game.score(score)).to eq(20)
  end

  it "should score 150 for rolls of all 5" do
    score = 21.times.map { 5 }
    expect(game.score(score)).to eq(20)
  end
end