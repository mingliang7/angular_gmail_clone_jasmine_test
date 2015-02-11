require 'spec_helper.rb'

feature 'Form spec', js: true do 
	scenario 'valid in form ' do
		visit "/#/inbox/email/1/new"

		fill_in "Name", with: "thkeam"
		select(25, from: 'age')

		click_button 'Submit'
		expect(page).to have_content("submitted")
	end

	scenario 'invalid in form' do
		visit "/#/inbox/email/1/new"
		click_button 'Submit'

		expect(page).to have_text("invalid")
 end
end