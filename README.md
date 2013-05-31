# OSRM Client Library

Provides a consistent interface for working with OSRM

## Installation

Add this line to your application's Gemfile - modified as appropriate to source from a private repository:

    gem ''

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install 

## Usage

### Creating a client:

```ruby
vw = Osrm::Client.new(host:"localhost:5000")
```

### Response Object

The response object has 6 attributes:
* status - the HTTP status code
* response - the JSON response body parsed
* modified_response - if the call modifies the response.  e.g. the vehicle position is converted into a rgeos point object
* message - HTTP status message
* timestamp - the resquest timestamp
* errors - array of errors (e.g. timeout || ssl error)

The request object also has a `successful?` method which returns whether the request was successful (i.e. the status code was a 2XX and there weren't any errors)

### Calls:

#### Routing

```ruby
```

##### params

###### required:

* start_pt - as geo_json (e.g. {"type"=>"Point", "coordinates"=>[-118.290192, 34.029839]})
* end_point - as geo_json

###### Optional:

* intermediary points: array of geo_jsons

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
