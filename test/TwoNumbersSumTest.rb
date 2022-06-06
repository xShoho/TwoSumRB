require './src/TwoNumbersSum'

describe TwoSum do
	describe '#twoSum' do
		context 'Given nums [2, 7, 11, 15] and target 9' do
			it 'should return [0, 1]' do
				expect(subject.twoSum([2, 7, 11, 15], 9)).to eql([0, 1])
			end
		end

		context 'Given nums [3, 2, 4] and target 6' do
			it 'should return [1, 2]' do
				expect(subject.twoSum([3, 2, 4], 6)).to eql([1, 2])
			end
		end

		context 'Given nums [3, 3] and target 6' do
			it 'should return [0, 1]' do
				expect(subject.twoSum([3, 3], 6)).to eql([0, 1])
			end
		end
	end
end