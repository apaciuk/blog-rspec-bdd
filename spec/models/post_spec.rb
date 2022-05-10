# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  current_user = User.first_or_create!(email: 'paul@example.com', password: 'password', password_confirmation: 'password')
  let(:post) do
    Post.new(title: 'Has A Valid Title', body: 'This is a valid first post', views: 0, user: current_user)
  end
  it 'has a title' do
    expect(post).to be_valid
  end
  it 'has a body between 5 and 100 characters' do
    post.body = '12345'
    expect(post).to be_valid
  end
end

