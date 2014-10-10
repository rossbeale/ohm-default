module Ohm::Default
  def self.included(model)
    model.extend ClassMethods
  end

  module ClassMethods
    def default_attributes
      @default_attributes ||= {}
    end

    def default(key, value)
      default_attributes[key] = value
    end
  end

  def save
    self.class.default_attributes.each do |k,v|
      self.send("#{k}=", v) if !self.send(k)
    end

    super
  end
end
