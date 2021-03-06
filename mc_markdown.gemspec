require File.expand_path( "../lib/mc_markdown/version", __FILE__ )

Gem::Specification.new do |s|

  s.name          = 'mc_markdown'
  s.version       = MCMarkdown::VERSION
  s.platform      = Gem::Platform::RUBY

  s.summary       = 'MailChimp flavoured markdown syntax using RedCarpet'
  s.description   = %q{ MailChimp flavoured markdown syntax using RedCarpet }
  s.authors       = ["Steven Sloan"]
  s.email         = ["stevenosloan@gmail.com"]
  s.homepage      = "http://github.com/mailchimp/mc_markdown"
  s.license       = "New-BSD"

  s.files         = Dir["{lib}/**/*.rb"]
  s.require_path  = "lib"

  # Utility
  s.add_dependency "redcarpet", "~> 3.0"
  s.add_dependency "slugity",   "~> 1.0"
  s.add_dependency "safe_yaml", "~> 1.0"

end
