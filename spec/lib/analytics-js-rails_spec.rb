require "spec_helper"

describe AnalyticsJs do
  class DummyClass
    def root_url
      'http://example.com/'
    end
  end

  before do
    @dummy_class = DummyClass.new
    @dummy_class.extend(AnalyticsJs)
  end

  describe "#asset_url" do
    it "appends the asset url to the root url" do
      helpers = double('helpers', 
        :asset_path => '/assets/foo.png'
      )
      ActionController::Base.stub(:helpers).and_return(helpers)
      
      @dummy_class.asset_url('foo.png').should == 'http://example.com/assets/foo.png'
    end
  end
end