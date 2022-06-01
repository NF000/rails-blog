require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save article without title" do
    article = Article.new
    assert_not article.save
  end

  test "should report error" do
    # 测试用例中没有定义 some_undefined_variable
    assert_raises(NameError) do
      some_undefined_variable
    end
  end
end
