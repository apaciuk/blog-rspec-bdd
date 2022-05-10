# frozen_string_literal: true

module PostsHelper 
def assign_post_to_user(post, creator)
    post.user = creator
end 
end
