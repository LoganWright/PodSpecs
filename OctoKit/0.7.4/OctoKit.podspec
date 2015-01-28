Pod::Spec.new do |s|
  s.name         = "OctoKit"
  s.version      = "0.7.4"
  s.summary      = "GitHub API client for Objective-C."

  s.homepage     = "https://github.com/octokit/octokit.objc"
  s.license      = "MIT"
  s.author       = { "GitHub" => "support@github.com" }

  s.source       = { :git => "https://github.com/octokit/octokit.objc.git", :tag => "#{s.version}" }
  s.source_files = "OctoKit"
  s.requires_arc = true

  s.ios.deployment_target = "6.0"
  s.osx.deployment_target = "10.8"

  s.prepare_command = <<-'END'
  find . -regex '.*\.[hm]' -exec sed -i '' -E 's@<ReactiveCocoa/(EXT.*)\.h>@<ReactiveCocoa/RAC\1.h>@' {} \;
  END

  s.dependency   "AFNetworking", "~> 1.3.3"
  s.dependency   "ISO8601DateFormatter", "~> 0.7.0"
  s.dependency   "Mantle", "~> 1.3.1"
  s.dependency   "ReactiveCocoa", "~> 2.2.2"
end
