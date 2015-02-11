require 'spec_helper.rb'

feature "ng directive", js: true do 
	scenario "looking up slide 1" do
		visit "/"
		click_on 'Slide 1'

		expect(page).to have_text("This is slide 1") 

	end 
	scenario "looking up slide 2" do
		visit "/"
		click_on 'Slide 2'

		expect(page).to have_text("This is slide 2") 

	end
end