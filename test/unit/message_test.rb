require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  test "should not save post without title" do
  	post = Post.new
  	assert !post.save
	end
end
