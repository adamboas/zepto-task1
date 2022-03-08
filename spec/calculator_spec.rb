require_relative '../calculator'

RSpec.describe "base functions", :type => :request do
  describe "one" do
    describe "when no argument provided" do
      it "returns the integer 1" do
        expect(one).to   eq(1)
      end
    end

    describe "when it has an add function as an argument" do
      it "executes the calculation" do
        expect(one(plus(1))).to eq(2)
        expect(one(plus(2))).to eq(3)
        expect(one(plus(3))).to eq(4)
      end
    end

    describe "when it has an minus function as an argument" do
      it "executes the calculation" do
        expect(one(minus(1))).to eq(0)
        expect(one(minus(2))).to eq(-1)
        expect(one(minus(3))).to eq(-2)
      end
    end

    describe "when it has a times function as an argument" do
      it "executes the calculation" do
        expect(one(times(1))).to eq(1)
        expect(one(times(2))).to eq(2)
        expect(one(times(3))).to eq(3)
      end
    end

    describe "when it has a divide_by function as an argument" do
      it "executes the calculation" do
        expect(one(divided_by(1))).to eq(1)
        expect(one(divided_by(2))).to eq(0)
        expect(one(divided_by(3))).to eq(0)
      end
    end
  end
end