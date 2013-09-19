# Analytics.js-Rails

A self-hosted copy of [Analytics.js](https://github.com/segmentio/analytics.js), a wrapper for web analytics services, for the Ruby on Rails 3.1+ asset pipeline.

Service A is good at X and Service B is good at Y, unfortunate but true. Use one common interface to standardize and modularize analytics setup across services.

## Installation

Add this line to your application's Gemfile:

    gem 'analytics-js-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install analytics-js-rails

## Usage

Render the loader partial on all pages where you want Analytics.js to load. Typically this is done in application.html.erb, immediately after the opening <body> tag. For example:

    <%= render 'analytics-js/loader', 
      user_identifier: current_user.id, 
      providers: { 
        'Google Analytics' => 'google_analytics_key',
        'KISSmetrics' => 'kissmetrics_key'
    } %>

Of course, keys should probably be stored in config files, not hard coded.

Add to your ```config/environments/production.rb```:

    config.assets.precompile += %w( analytics.js )

You can now use Analytics.js in your app.

## Version

The version of this gem reflects the Analytics.js version.

## Contributing

Yes, please. Pull requests are very welcome. If it's not tested, we will not pull it.

1. Fork it
2. Bonus points for feature branches (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
