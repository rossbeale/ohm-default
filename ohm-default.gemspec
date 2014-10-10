Gem::Specification.new do |s|
  s.name              = "ohm-default"
  s.version           = "0.0.1"
  s.summary           = "Default values for Ohm"
  s.description       = "Allows the set of default values for Ohm"
  s.authors           = ["elcuervo"]
  s.licenses          = ["MIT", "HUGWARE"]
  s.email             = ["yo@brunoaguirre.com"]
  s.homepage          = "http://github.com/elcuervo/ohm-default"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files test`.split("\n")

  s.add_dependency("ohm", "~> 2.0.1")
  s.add_development_dependency("cutest", "~> 1.2.1")
end
