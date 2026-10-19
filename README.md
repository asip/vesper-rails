# Vesper Rails

Vesper Rails links Vesper and Ruby on Rails.

## Vesper

https://github.com/asip/vesper

## Installation

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add vesper-rails
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install vesper-rails
```

## Usage

### REST API

```
class ApplicationController < Vesper::Api::Controller
  ...
end
```

### other

```
class ApplicationController < Vesper::Controller
  ...
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/asip/vesper-rails.
