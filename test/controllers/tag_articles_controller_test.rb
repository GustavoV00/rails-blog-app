require "test_helper"

class TagArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_article = tag_articles(:one)
  end

  test "should get index" do
    get tag_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_article_url
    assert_response :success
  end

  test "should create tag_article" do
    assert_difference("TagArticle.count") do
      post tag_articles_url, params: { tag_article: { article_id: @tag_article.article_id, tag_id: @tag_article.tag_id } }
    end

    assert_redirected_to tag_article_url(TagArticle.last)
  end

  test "should show tag_article" do
    get tag_article_url(@tag_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_article_url(@tag_article)
    assert_response :success
  end

  test "should update tag_article" do
    patch tag_article_url(@tag_article), params: { tag_article: { article_id: @tag_article.article_id, tag_id: @tag_article.tag_id } }
    assert_redirected_to tag_article_url(@tag_article)
  end

  test "should destroy tag_article" do
    assert_difference("TagArticle.count", -1) do
      delete tag_article_url(@tag_article)
    end

    assert_redirected_to tag_articles_url
  end
end
