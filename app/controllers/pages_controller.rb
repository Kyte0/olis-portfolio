class PagesController < ApplicationController
  def projects
  end

  def home
    @projects = Project.all.shuffle.pop(3)
    @newest_project = Project.all.last
  end

  def contact
  end
end
