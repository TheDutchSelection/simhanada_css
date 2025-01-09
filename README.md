# This is no longer updated, we'll remove it once we stop using PC History

# Simhanada

This is Simhanada, CSS and JS cornerstones of all TDS projects.

## Installation

Add this line to your application's Gemfile:

```
gem 'simhanada', github: 'TheDutchSelection/simhanada_css', branch: 'master'
```

And then execute:

```
$ bundle
```

## Usage

In your scss file:

```
@import 'simhanada';
```

In your javascript file:
```
//= require simhanada
```

or include seperate parts
```
//= require simhanada/polyfill
//= require simhanada/nav
```

## Showcase

```
showcase/bin/rails s
```

And check http://localhost:3000 in your browser

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

