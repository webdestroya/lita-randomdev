# lita-randomdev

This plugin will let you select a random developer

## Installation

Add lita-randomdev to your Lita instance's Gemfile:

``` ruby
gem "lita-randomdev"
```

## Configuration


``` ruby
Lita.configure do |config|
  config.handlers.randomdev.developers = [
    "@somedeveloper", "@coder1", "@hacker"
  ]
end
```

## Usage

* `Lita: randomdev`
* `Lita: randomdev you need to reboot the server`

## License

[MIT](http://opensource.org/licenses/MIT)
