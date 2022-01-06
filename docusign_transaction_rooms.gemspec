# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docusign_transaction_rooms/version'

Gem::Specification.new do |spec|
  spec.name          = "docusign_transaction_rooms"
  spec.version       = DocusignTransactionRooms::VERSION
  spec.authors       = ["Mwaki Harri Magotswi"]
  spec.email         = ["magotswi@gmail.com"]

  spec.summary       = %q{Ruby wrapper around the DocuSign Transaction Rooms API.}
  spec.description   = %q{A (hopefully) simple ruby wrapper for the DocuSign Transaction Rooms API (https://demo.rooms.docusign.com/restapi/swagger/).}
  spec.homepage      = "https://github.com/omundu/docusign_transaction_rooms"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'virtus', '~> 2.0.0'
  spec.add_dependency "resource_kit", '~> 0.1.7'
  spec.add_dependency "kartograph", '~> 0.2.8'
  spec.add_dependency "faraday", '~> 0.15.0'

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "pry"
end
