require 'cutest'
require 'ohm'
require 'ohm/default'

prepare { Ohm.flush }

class Model < Ohm::Model
  include Ohm::Default

  attribute :a
  attribute :b

  default   :a, "A"
end

test "sets a default value" do
  m = Model.create

  assert_equal m.a, "A"
  assert_equal m.b, nil
end

test "can overwrite default" do
  m = Model.create a: "Relax", b: "Always"

  assert_equal m.a, "Relax"
  assert_equal m.b, "Always"
end
