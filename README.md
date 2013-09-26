# Analytics.js-Rails
[![Build Status](https://travis-ci.org/phillbaker/analytics-js-rails.png?branch=master)](https://travis-ci.org/phillbaker/analytics-js-rails)

This gem packages a self-hosted copy of [Analytics.js](https://github.com/segmentio/analytics.js), a wrapper for web analytics services, for use with the Ruby on Rails 3.1+ asset pipeline.

The unfortunate truch: Analytics Service A is good at X, bad at Y, Analytics Service B is good at Y, bad at X and Z. Or maybe Marketing likes Service A, but Engineering needs Service B. Whatever. Analytics.js offers one common interface to standardize and modularize analytics setup across services - now easily in rails.

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

Make sure that you ```root :to => "controller#action"``` in ```config/routes.rb```.

Add to your ```config/environments/production.rb```:

    config.assets.precompile += %w( analytics.js )

You can now use Analytics.js in your app.

## Version

The version of this gem reflects the Analytics.js version.

## Thanks

To the folks at [segment.io](http://segment.io) for all their work on Analytics.js - to a more panoptical world!

## Contributing

Yes, please. Pull requests are very welcome. If it's not tested, we will not pull it.

1. Fork it
2. Bonus points for feature branches (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
