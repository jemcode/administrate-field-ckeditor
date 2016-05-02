# Administrate::Field::Ckeditor

A plugin for adding [Ckeditor] support in [Administrate].

## Usage

Add to your `Gemfile`:

```ruby
gem "administrate-field-ckeditor", "~> 0.0.1"
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::Ckeditor,
]
```

## Stopgap fix for javascript

At the moment, Administrate doesn't automatically load javascripts from plugins.
To fix this, you need to generate the Administrate javascript file:

```bash
$ rails g administrate:views:layout
```

And then add a line to `app/views/admin/application/_javascript.html.erb`
to input the javascript for this gem:

```
<%= javascript_include_tag "administrate-field-ckeditor/application" %>
```

[Ckeditor]: https://github.com/galetahub/ckeditor
[Administrate]: https://github.com/thoughtbot/administrate

## About Jemcode

<img src="https://www.jemco.de/logo.svg" width="400" alt="Jemcode">

Heroku Postico is maintained and funded by Jemcode Limited. We are [available for hire][hire].

[hire]: https://www.jemco.de?utm_source=github
