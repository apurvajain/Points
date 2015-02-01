require 'spec_helper'

describe Point do

	let(:point1) { Point.new(1,1) }
	let(:point2) { Point.new(1,1) }
	let(:point3) { Point.new(1,1) }

  it 'returns the x-coordiante' do
    expect(point1.x).to eq 1
  end

  it 'returns the y-coordiante' do
  	expect(point1.y).to eq 1
  end

  it 'equality of points' do
  	expect(point1 == point2).to be true
  end

  it 'comparision against nil' do
  	expect(point1 == nil).to be false
  end

  it 'Reflexive Property' do
  	expect(point1).to eq(point1)
  end

  it 'Symmetric Property' do
  	expect(point1 == point2).to eq(point2 == point1)
  end

  it 'Transitive Property' do
  	expect(point1 == point2 && point2 == point3 && point3 == point1).to be true
  end

  it 'implements a hash function' do
      expect(point1.hash).to eq(point2.hash)
  end


end