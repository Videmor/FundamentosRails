module PostsHelper

  def navigation_link link=nil, url
    link_to_if request.path != url, link, url
  end

end
