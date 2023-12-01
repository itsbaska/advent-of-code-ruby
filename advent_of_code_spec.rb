require 'rspec'
require_relative './advent_of_code.rb'

RSpec.describe CalibrationLineParser do
  describe '#parse_number' do
    it 'converts a string into a 2 digit number' do
      input = 'a1b2c3d4e5f'
      parser = CalibrationLineParser.new(input)
      expect(parser.parse_number).to eq(15)
    end
    
    context 'when only on number on line' do
      it 'converts a string into a 2 digit number' do
        input = 'treb7uchet'
        parser = CalibrationLineParser.new(input)
        expect(parser.parse_number).to eq(77)
      end
    end
    
    context 'when NO number on line' do
      it 'returns 0' do
        input = 'nonumbershere'
        parser = CalibrationLineParser.new(input)
        expect(parser.parse_number).to eq(0)
      end
    end
  end
end