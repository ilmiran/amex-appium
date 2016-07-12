require 'pry'
class LoginScreen < ScreenActions

 def verify_screen
   find_with_wait{amex_logo}
   find_with_wait{userid_field}
 end

 def amex_logo
  find_element(id: 'login_amex_logo')
 end

 def userid_field
  find_element(id: 'login_form_userid')
 end

 def password_field
  find_element(id: 'login_form_password')
 end

 def login_button
  find_element(id: 'login_form_submit')
 end

 def error_title
  find_element(id: 'dialog_title').text
 end

 def error_message
  find_element(id: 'dialog_text_data').text
 end

end

