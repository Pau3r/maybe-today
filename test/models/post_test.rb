require "test_helper"

class PostTest < ActiveSupport::TestCase
  setup do
    @user = users(:testuser)
    @post = Post.new(title: "Title", content: "content", user: @user)
  end

  test "post attributes must not be empty" do
    post = Post.new(user: @user)
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:content].any?
  end

  test "should create post" do
    assert @post.valid?
  end

  test "should fail to create post without user" do
    post = Post.new(title: "Title", content: "content")
    assert post.invalid?
  end
end
