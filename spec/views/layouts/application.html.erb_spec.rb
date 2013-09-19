require "spec_helper"

describe "layouts/application.html.erb" do
  it "contains the analytics.js loader" do
    render

    # rendered.should contain("analytics.load")
    # rendered.should contain("analytics.initialize")
    expect(view).to render_template(:partial => "_loader", :count => 1)
  end
end