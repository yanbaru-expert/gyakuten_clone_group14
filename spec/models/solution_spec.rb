require 'rails_helper'

RSpec.describe Solution, type: :model do
    it "detailが空だと無効であること" do
        answer = Solution.new(detail: "")
        expect(answer.valid?).to eq(false)
    end
end