Pod::Spec.new do |s|
    s.name                  = "gmock-xcode"
    s.version               = "1.0.0"
    s.summary               = "Xcode integration for GoogleMock through XCTest."
    s.description           = <<-DESC
                              This project consists of an integration of the GoogleMock library
                              to Apple's Xcode IDE.
                              
                              Since version 5, Xcode provides a nice way to write unit tests
                              with the XCTest framework. 
                              The cool thing is that unit tests written with XCTest are nicely
                              integrated to the IDE, providing visual feedback when running tests.
                              Obviously they are also nicely integrated with the different build
                              toolchains, like xcodebuild or Facebook's xctool.
                              
                              While this is perfect for Objective-C, writing unit tests for other
                              languages (like C++) is not so great with XCTest. 
                              Of course, this is possible using Objective-C++, but writing an
                              Objective-C class for each C++ test case leads to some undesired
                              overhead.
                            
                              GoogleMock is nice unit testing library for C++. The only issue
                              is that it does not integrate well with Xcode, as does XCTest. 
                              This mean the IDE won't provide visual feedback for the unit tests
                              written with GoogleMock, and you'll have to look at the console
                              output to inspect any failed test.
                            
                              So this project fixes this issue by bridging GoogleMock to XCTest.
                              DESC
    s.homepage              = "https://github.com/macmade/gmock-xcode"
    s.documentation_url     = "https://github.com/macmade/gmock-xcode"
    s.license               = "Boost"
    s.author                = "Jean-David Gadina"
    s.social_media_url      = "http://twitter.com/macmade"
    s.platform              = :osx
    s.osx.deployment_target = "10.7"
    s.source                = { :git => "https://github.com/macmade/gmock-xcode.git", :tag => "1.0.0" }
    s.source_files          = "GoogleMock/Classes/**/*.{h,m,mm}"
    s.requires_arc          = true
end
