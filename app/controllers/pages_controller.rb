 class PagesController < ApplicationController
  def home
  	@blogs = Blog.all
  	@skills = Skill.all
  end

  def about
 	@blogs = Blog.all
   end

  def contact
  end
end
