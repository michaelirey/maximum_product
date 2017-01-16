require 'maximum_product'
require 'fast_maximum_product'

RSpec.shared_examples 'maximum product finder' do
  subject { described_class.new(input) }

  describe '#maximum' do
    context 'all positive integers' do
      let(:input) { [1, 3, 7, 9] }
      it 'returns the maximum product' do
        expect(subject.maximum).to eq(189)
      end
    end

    context 'all negative integers' do
      let(:input) { [-1, -3, -7, -9] }
      it 'returns the maximum product' do
        expect(subject.maximum).to eq(-21)
      end
    end

    context 'some positive, negative' do
      let(:input) { [-1, 3, -7, -9] }
      it 'returns the maximum product' do
        expect(subject.maximum).to eq(189)
      end
    end

    context 'some positive, negative and zero' do
      let(:input) { [-9, 0, -6, 7, 8, 2, 1, -1, 3, 10] }
      it 'returns the maximum product' do
        expect(subject.maximum).to eq(560)
      end
    end
  end
end

RSpec.describe MaximumProduct do
  it_behaves_like 'maximum product finder'
end

RSpec.describe FastMaximumProduct do
  it_behaves_like 'maximum product finder'
end
