require "windowed_max_range"
require "rspec"

describe "#max_window_range" do
    let(:arr) {[1, 0, 2, 5, 4, 8]}
    let(:arr2) {[1, 3, 2, 5, 4, 8]}
    it 'should find the maximum range within a set of w elements' do
        expect(max_window_range(arr, 2)).to eq(4)
        expect(max_window_range(arr, 3)).to eq(5)
        expect(max_window_range(arr, 4)).to eq(6)
        expect(max_window_range(arr2, 5)).to eq(6)
    end
end