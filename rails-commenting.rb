# ASSESSMENT 6: Rails Commenting Challenge
# Add comments to the Rails Blog Post Challenge
# Explain the purpose and functionality of the code directly below the 10 comment tags


# app/controller/blog_posts_controller.rb

# 1) define all the RESTful methods for the controller Blog Post
class BlogPostsController < ApplicationController
  def index
    # 2)instance variable 'posts' stores all the instances of blogposts
    @posts = BlogPost.all
  end

  def show
    # 3) instance variable 'post' stores the blogpost with the specified paramater(id)
    @post = BlogPost.find(params[:id])
  end

  # 4) new method will display new.html.erb which will store the form and call the create method
  def new
  end

  def create
    # 5) the create method will put all the data from the form (from 'new.html.erb') and store it as a new instance of blogpost
    @post = BlogPost.create(blog_post_params)
    if @post.valid?
      redirect_to @post
    else
      render action: :new
    end
  end

  def delete
    @post = BlogPost.find(params[:id])
    if @post.destroy
      redirect_to blog_posts_path
    else
      # 6) if the delete method fails, make the user stay on the same page (the blog post the user is trying to delete)
      redirect_to blog_post_path(@post)
    end
  end

  # 7)
  private
  def blog_post_params
    # 8) set a strong param/whitelist to make sure the blog post instance can only have the attributes 'title' and/or 'content'
    params.require(:blog_post).permit(:title, :content)
  end

end


# app/models/blog_post.rb

# 9)define the association(s) that Blogpost has AND include any validations neccessary
class BlogPost < ApplicationRecord
  # 10)the 'blogpost' model has 'has_many' association to the 'comment' model
  has_many :comments
end
