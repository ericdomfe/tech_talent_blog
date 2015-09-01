require 'test_helper'

class BloPostsControllerTest < ActionController::TestCase
  setup do
    @blo_post = blo_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blo_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blo_post" do
    assert_difference('BloPost.count') do
      post :create, blo_post: { author: @blo_post.author, blog_entry: @blo_post.blog_entry, title: @blo_post.title }
    end

    assert_redirected_to blo_post_path(assigns(:blo_post))
  end

  test "should show blo_post" do
    get :show, id: @blo_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blo_post
    assert_response :success
  end

  test "should update blo_post" do
    patch :update, id: @blo_post, blo_post: { author: @blo_post.author, blog_entry: @blo_post.blog_entry, title: @blo_post.title }
    assert_redirected_to blo_post_path(assigns(:blo_post))
  end

  test "should destroy blo_post" do
    assert_difference('BloPost.count', -1) do
      delete :destroy, id: @blo_post
    end

    assert_redirected_to blo_posts_path
  end
end
