require 'test_helper'

class CityArticlesControllerTest < ActionController::TestCase
  setup do
    @city_article = city_articles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:city_articles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create city_article" do
    assert_difference('CityArticle.count') do
      post :create, city_article: @city_article.attributes
    end

    assert_redirected_to city_article_path(assigns(:city_article))
  end

  test "should show city_article" do
    get :show, id: @city_article.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @city_article.to_param
    assert_response :success
  end

  test "should update city_article" do
    put :update, id: @city_article.to_param, city_article: @city_article.attributes
    assert_redirected_to city_article_path(assigns(:city_article))
  end

  test "should destroy city_article" do
    assert_difference('CityArticle.count', -1) do
      delete :destroy, id: @city_article.to_param
    end

    assert_redirected_to city_articles_path
  end
end
