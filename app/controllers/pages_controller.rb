class PagesController < ApplicationController
  def home

  end

  def about
    @posts = Post.all.limit(1).order("created_at desc")
  end

  def contact

  end
end
