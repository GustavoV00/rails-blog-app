require "application_system_test_case"

class TagArticlesTest < ApplicationSystemTestCase
  setup do
    @tag_article = tag_articles(:one)
  end

  test "visiting the index" do
    visit tag_articles_url
    assert_selector "h1", text: "Tag articles"
  end

  test "should create tag article" do
    visit tag_articles_url
    click_on "New tag article"

    fill_in "Article", with: @tag_article.article_id
    fill_in "Tag", with: @tag_article.tag_id
    click_on "Create Tag article"

    assert_text "Tag article was successfully created"
    click_on "Back"
  end

  test "should update Tag article" do
    visit tag_article_url(@tag_article)
    click_on "Edit this tag article", match: :first

    fill_in "Article", with: @tag_article.article_id
    fill_in "Tag", with: @tag_article.tag_id
    click_on "Update Tag article"

    assert_text "Tag article was successfully updated"
    click_on "Back"
  end

  test "should destroy Tag article" do
    visit tag_article_url(@tag_article)
    click_on "Destroy this tag article", match: :first

    assert_text "Tag article was successfully destroyed"
  end
end
