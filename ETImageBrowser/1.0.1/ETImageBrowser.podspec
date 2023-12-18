#
# Be sure to run `pod lib lint ETImageBrowser.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name         = "ETImageBrowser"

  s.version      = "1.0.1"

  s.summary      = "iOS image browser / iOS 图片浏览器"

  s.description  = <<-DESC
            iOS 图片浏览器，功能强大，易于拓展，极致的性能优化和严格的内存控制让其运行更加的流畅和稳健。
                   DESC

  s.homepage     = "https://github.com/feifu2023/ETImageBrowser"

  s.license      = "MIT"

  s.author       = { "feifu2023" => "" }

  s.platform     = :ios, "12.0"

  s.source       = { :git => "https://github.com/feifu2023/ETImageBrowser.git", :tag => "#{s.version}" }

  s.requires_arc = true
  s.frameworks = "Foundation","UIKit"

  s.default_subspec = "Core"
  
  s.subspec "Core" do |core|
    core.source_files   = "ETImageBrowser/**/*.{h,m}"
    core.exclude_files  = "ETImageBrowser/WebImageMediator/YBIBDefaultWebImageMediator.{h,m}"
    core.resources      = "ETImageBrowser/YBImageBrowser.bundle"
    core.dependency 'YYImage'
  end

  s.subspec "Video" do |video|
    video.source_files = "Video/*.{h,m}"
    video.resources    = "Video/YBImageBrowserVideo.bundle"
    video.dependency 'ETImageBrowser/Core'
  end

end

