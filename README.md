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

### Other

```
class ApplicationController < Vesper::Controller
  ...
end
```

## App that use Vesper Rails

Hotwire + REST API (+ management console)

<https://github.com/asip/easel-legacy>

REST API only (+ management console)

<https://github.com/asip/easel-back>

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/asip/vesper-rails.
