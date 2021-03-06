feature '/' do
  feature 'viewing existing posts' do
    scenario 'page has 3 posts' do
      visit '/'
      expect(page).to have_css('.post', count: 3)
    end
    scenario 'expected tests post titles are in place' do
      visit '/'
      expect(page).to have_css('h2', text: 'Diamonds are better than rubies')
      expect(page).to have_css('h2', text: 'Happy birthday')
      expect(page).to have_css('h2', text: "I can't think of an interesting blog title")
    end 
  end
end