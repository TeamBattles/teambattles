# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "teambattles_sdk"
  spec.version       = "0.1.0"
  spec.summary       = "Official Ruby SDK for the TeamBattles public developer API."
  spec.description   = "A Kiota-generated client plus a one-call convenience wrapper for the TeamBattles API."
  spec.authors       = ["TeamBattles"]
  spec.homepage      = "https://teambattles.gg"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 3.0"

  spec.files         = Dir["lib/**/*.rb", "README.md"]
  spec.require_paths = ["lib"]

  # Ruby Kiota serialization is JSON-only (Text/Form/Multipart are not released).
  # This is acceptable for a JSON API.
  # faraday and serialization_json both cap abstractions at < 0.16, and 0.15.1 is the latest published
  # abstractions, so pin to the 0.15 line (0.18 was never released).
  spec.add_dependency "microsoft_kiota_abstractions", "~> 0.15"
  spec.add_dependency "microsoft_kiota_faraday", "~> 0.13"
  spec.add_dependency "microsoft_kiota_serialization_json", "~> 0.7"
end
