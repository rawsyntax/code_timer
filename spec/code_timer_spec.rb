require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe CodeTimer do
  let(:ct) { CodeTimer.new }

  describe 'start' do
    it 'should raise ArgumentError if no section name is given' do
      lambda { ct.start("") }.should raise_error(ArgumentError)
    end
  end

  describe 'stop' do
    it 'should raise NotTimingError if the timer was not running' do
      lambda { ct.stop }.should raise_error(CodeTimer::NotTimingError)
    end
  end
end
