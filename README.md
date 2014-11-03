# Shielding

[Shielding](https://github.com/artsy/shielding) is a Rails gem with javascript
utility to abort pending AJAX calls. Please refer to this
[StackOverflow thread](http://stackoverflow.com/questions/1802936/stop-all-active-ajax-requests-in-jquery)
for more details.

## Installation

Add this line to your application's Gemfile:

    gem 'shielding'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shielding

## Usage

Shielding keeps track of all the ongoing AJAX calls in a `$.xhrPool` array,
and to abort all of them, simply call `$.xhrPool.abortAll()`.

When to abort all the ongoing AJAX calls is the client app's decision. For
example, we may want to abort all the pending AJAX calls when
[Turbolinks](https://github.com/rails/turbolinks) start to fetch a target page:

```javascript
$(document).on('page:fetch', function() {
  $.xhrPool.abortAll();
});
```

## Contributing

1. Fork it ( http://github.com/artsy/shielding/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
