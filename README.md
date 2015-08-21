## Usage

Add to your Gemfile:

```ruby
gem 'cuit_validator'
```

Run:

```
bundle install
```

Then add the following to your model:

```ruby
validates :my_cuit, :cuit => true
```

## Validation outside a model

If you need to validate the cuit outside a model:

### Normal mode

```ruby
CuitValidator.valid?('20-11111111-2') # boolean
```

## Thread safety

This gem is thread safe, with one caveat: `EmailValidator.default_options` must be configured before use in a multi-threaded environment. If you configure `default_options` in a Rails initializer file, then you're good to go since initializers are run before worker threads are spawned.
