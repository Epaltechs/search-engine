require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  ddescribe '- test for Articles requests' do
    before(:all) do
      @article = Article.create(title: 'Article 1',
                                body: 'Search engine evaluator as was formerly known, is now AI community surfer.')
      Article.create(title: 'Article 2',
                     body: 'IRB is a quick way to explore the Ruby programming language and try out code without creating a file.')
    end

    it 'articles#index - should respond status success' do
      get articles_path
      expect(response).to have_http_status(:success)
    end

    it 'articles#show - should respond status success' do
      get article_path(@article.id)
      expect(response).to have_http_status(:success)
    end

    it 'articles#create - should respond status created or (200)' do
      get new_article_path
      Article.create(title: 'Article 3',
                     body: 'A dipLomat is someone who can tell you go to hell in a way...')
      expect(response).to have_http_status(200)
    end
  end
end
