require "test_helper"

class PostTest < ActiveSupport::TestCase
  test "post attributes must not be empty" do
    post = Post.new
    assert post.invalid?
    assert post.errors[:title].any?
    assert post.errors[:content].any?
  end

  test "should create opost" do
    post = Post.new(title: "test_title", content: "test")
    assert post.valid?
  end
end
