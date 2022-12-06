require 'rails_helper'

RSpec.describe Article, type: :model do
  before(:each) do
    @article = Article.create(title: 'What is Search Engine',
                              body: 'Search engine evaluator as was formerly known, is now AI community surfer.')
  end

  describe 'for article model validations' do
    it 'for title validation, it is not valid if the title is nil' do
      @article.title = nil
      expect(@article).to_not be_valid
    end

    it 'for body validation, it is not valid if the input is empty' do
      @article.body = nil
      expect(@article).to_not be_valid
    end
  end
end
