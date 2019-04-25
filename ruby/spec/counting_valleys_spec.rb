# frozen_string_literal: true

require './spec/spec_helper.rb'
require './lib/counting_valleys'

describe CountingValleys do
  context 'given a path' do
    let(:path) { 'UDDDUDUU' }
    it 'should calculate correct amount of valleys' do
      expect(CountingValleys.count_valleys(path)).to eq(1)
    end
  end
end
