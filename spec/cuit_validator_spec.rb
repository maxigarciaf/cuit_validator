require 'spec_helper'

class TestUser < TestModel
  validates :cuit, :cuit => true
end

class TestUser2 < TestModel
  validates :cuit, :cuit => {:allow_empty => true}
end

RSpec.describe CuitValidator do

  context "#valid" do
    it "must return true when cuit is valid" do
      expect(TestUser.new(:cuit => "20-11111111-2")).to be_valid
    end

    it "must return false when cuit is not valid" do
      expect(TestUser.new(:cuit => "20-11111111-4")).to_not be_valid
    end

    it "must return true when the flag allow empty is true" do
      expect(TestUser2.new(:cuit => "")).to be_valid
    end
  end
end