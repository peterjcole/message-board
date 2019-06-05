feature '/' do
  feature 'viewing existing posts' do
    scenario 'page has 3 posts' do
      pending('database connection & view setup')
      visit '/'
      expect(page).to have_css('.post', count: 3)
    end
    scenario 'expected tests post titles are in place' do
      pending('database connection & view setup')
      visit '/'
      expect(page).to have_css('h1', text: 'Diamonds are better than rubies')
      expect(page).to have_css('h1', text: 'Happy birthday')
      expect(page).to have_css('h1', text: "I can't think of an interesting blog title")
    end 
  end
end