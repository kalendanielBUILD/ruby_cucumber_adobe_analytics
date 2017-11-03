class test_article
test "should not save article without title" do
  article = Article.new
  assert_not article.save
end
