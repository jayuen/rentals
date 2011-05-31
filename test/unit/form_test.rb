require File.expand_path("../../test_helper.rb", __FILE__)
require 'minitest/spec'

describe Form do
  before do
    Mongoid.master.collections.select {|c| c.name !~ /system/ }.each(&:drop)
  end

  describe "create" do
    it "should update sequence when successful" do
      f = Form.create!
      f.sequence.must_equal 1

      f2 = Form.create!
      f2.sequence.must_equal 2
    end
  
    it "should not update sequence when unsuccessful" do
      f = Form.create :first_name => 123  
 
      fail("need to get this to fail") 
      f.sequence.must_equal nil
    end
  end
end
