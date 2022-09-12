# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'harry potter'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
  end
end

RSpec.describe 'Adding an Author', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Author', with: 'J. K. Rowling'
      click_on 'Add Author'
      visit authors_path
      expect(page).to have_content('J. K. Rowling')
    end
  end

  RSpec.describe 'Adding a Price', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Price', with: '12.99'
      click_on 'Add Price'
      visit price_path
      expect(page).to have_content('12.99')
    end
  end

  RSpec.describe 'Adding a Date', type: :feature do
    scenario 'valid inputs' do
      visit new_book_path
      fill_in 'Date', with: '01/01/2001'
      click_on 'Add Date'
      visit date_path
      expect(page).to have_content('01/01/2001')
    end
  end