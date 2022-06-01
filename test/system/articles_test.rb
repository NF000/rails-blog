require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit articles_url
  #
  #   assert_selector "h1", text: "Articles"
  # end
  test "viewing the index" do
    visit articles_path
    assert_selector "h1", text: "Articles"
  end

  test "creating an article" do
    visit articles_path

    click_on "New Article"

    fill_in "Title", with: "Creating an Article"
    fill_in "Text", with: "Created this article successfully!"

    click_on "Save Article"

    assert_text "Creating an Article"
  end
end
