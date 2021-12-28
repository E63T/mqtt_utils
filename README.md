# mqtt_utils

A set if MQTT related utility methods in Crystal (WIP)

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     mqtt_utils:
       github: unn4m3d/mqtt_utils
   ```

2. Run `shards install`

## Usage

```crystal
require "mqtt_utils"

info = MQTTUtils::RouteInfo.parse "d2p/message_type_method/g/gateway/d/device/r/reference"

puts info.gateway_key # => gateway
```

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/unn4m3d/mqtt_utils/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [unn4m3d](https://github.com/unn4m3d) - creator and maintainer
