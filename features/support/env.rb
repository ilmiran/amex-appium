# https://github.com/rspec/rspec-expectations

require "bundler"
require "appium_lib"
require "rspec/expectations"
require 'pry'

def caps
  {caps: { deviceName: "jgjhgjhgjhg",
           platformName: "Android",
           app:(File.join(File.dirname(__FILE__), "..", "..", "com.americanexpress.android.acctsvcs.us.apk")),
           appPackage: "com.americanexpress.android.acctsvcs.us",
           appActivity: "com.americanexpress.android.acctsvcs.us.firstuse.FirstTimeExperienceInitialLoadingActivity",
           newCommandTimeout: "3600",
           appium_lib: {wait: 20, debug: false}

  }}
end

Appium::Driver.new(caps)
Appium.promote_appium_methods(Object)

def terms_of_service_screen
  @terms_of_service_screen ||= TermsOfServiceScreen.new
end

def login_screen
  @login_screen ||= LoginScreen.new
end
