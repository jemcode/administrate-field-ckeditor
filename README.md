# Administrate::Field::Ckeditor

[![Code Climate](https://codeclimate.com/github/jemcode/administrate-field-ckeditor/badges/gpa.svg)](https://codeclimate.com/github/jemcode/administrate-field-ckeditor)

A plugin for adding [CKEditor] support in [Administrate].

## Usage

Add to your `Gemfile`:

```ruby
gem "administrate-field-ckeditor", "~> 0.0.9"
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

Or with CKEditor options:
```ruby
ATTRIBUTE_TYPES = [
  bars: Field::Ckeditor.with_options({ ckeditor: { uiColor: '#800000' }}),
]
```

[CKEditor]: https://github.com/galetahub/ckeditor
[Administrate]: https://github.com/thoughtbot/administrate

## About Jemcode

[<img src="https://www.jemco.de/logo.svg" width="400" alt="Jemcode">][hire]

Administrate::Field::Ckeditor is maintained and funded by Jemcode Limited. We are [available for hire][hire].

[hire]: https://www.jemco.de?utm_source=github
