#
# Be sure to run `pod lib lint ASMFunctional.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ASMFunctional"
  s.version          = "0.1.0"
  s.summary          = "A short description of ASMFunctional."
  s.description      = <<-DESC
                       An optional longer description of ASMFunctional

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.author           = { "Andrew Molloy" => "amolloy@gmail.com" }
  s.source           = { :git => "git@bitbucket.org:amolloy/asmfunctional.git", :tag => s.version.to_s }

  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
