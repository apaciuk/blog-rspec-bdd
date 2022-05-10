require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'paul@example.com', password: 'password', password_confirmation: 'password')
  let(:post) { Post.new(title: 'My first post', content: 'This is my first post', user: current_user) }

end
