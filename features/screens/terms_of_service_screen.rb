class TermsOfServiceScreen < ScreenActions

 def verify_screen
   find_with_wait(30){agree_button}
   find_with_wait{header_text}
   expect(header_text).to eq "End User License Agreement"
 end

 def agree_button
  find_element(id: "generic_webview_positive_button")
 end

 def header_text
  find_element(id: 'generic_webview_header_title').text
 end
end

