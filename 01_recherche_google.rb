require 'watir'
browser = Watir::Browser.new()
browser.goto 'google.com'
search_bar = browser.text_fiel(class: 'gsfi')
search_bar.set(requete)

#methode du clic
submit_button = browser.button(type:"submit")
submit_button.click

browser.driver_manage.timeouts.implicit_wait = 3
search_result_divs = browser.divs(class:"rc")
search_result_divs.each { |div| p div.h2.text }

p "Méfait accompli, fermeture du browser"
browser.close
