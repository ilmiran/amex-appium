Given(/^I land on terms of service screen$/) do
  terms_of_service_screen.verify_screen
end

Then(/^I click agree button$/) do
  terms_of_service_screen.agree_button.click
end

And(/^I land on login screen$/) do
  login_screen.verify_screen
end

Then(/^I type "(.*?)" as userid/) do |userid|
  login_screen.userid_field.send_keys(userid)
end

Then(/^I type "(.*?)" as password/) do |password|
  login_screen.password_field.send_keys(password)
end

Then(/^I click login button$/) do
  login_screen.login_button.click
end

And(/^I get error message/) do
  login_screen.error_message
end
