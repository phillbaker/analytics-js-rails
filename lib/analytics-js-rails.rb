require "analytics-js/version"
require "analytics-js/engine"

module AnalyticsJs
  # Unfortunately Rails doesn't provide a helper for this. So this is it.
  # http://stackoverflow.com/q/7597127
  def asset_url(asset)
    root_url[0...-1] + ActionController::Base.helpers.asset_path(asset)
  end
end

# ActionController::Base.send :include, AnalyticsJs
ActionView::Base.send :include, AnalyticsJs