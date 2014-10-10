# Ohm::Default

Adds the ability to set default values to an Ohm Model

```bash
gem install ohm-default
```

```ruby
class Model < Ohm::Model
  include Ohm::Default

  default :attribute, "value"
end
```
