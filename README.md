# Nmax

This script searches for a specified count of maximum numbers in STDIN from the console or in the application for the object supporting the `each_line` method, for example, from a file.

There are restrictions:

  * the number is a continuous sequence of not more than 1000 digits
  * the count of output numbers is a required parameter of the script

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nmax-tool'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nmax-tool

## Usage

From a console:

    $ cat sample_data_40GB.txt | nmax 10000

From an application:

```ruby
required 'nmax/integer'

f = File.new('testfile')
ni = Nmax::Integer.new(10000)

ni.perform(f)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/portmare/nmax. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Nmax project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/portmare/nmax/blob/master/CODE_OF_CONDUCT.md).
