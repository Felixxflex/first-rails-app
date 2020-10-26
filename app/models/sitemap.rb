require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://shivflex-services.com'
SitemapGenerator::Sitemap.create do
  add 'pages#home', :changefreq => 'daily', :priority => 0.9
  add "/path/web_development/page", :changefreq => 'daily', :priority => 0.9
  add "/path/web_application/page", :changefreq => 'daily', :priority => 0.9
  add "/path/social-media/page", :changefreq => 'daily', :priority => 0.9
  add "/path/social-media-management/page", :changefreq => 'daily', :priority => 0.9
  add "/path/corona-package/page", :changefreq => 'daily', :priority => 0.9
  add '/path/contact/page', :changefreq => 'weekly'
  add "/path/testimonials/page", :changefreq => 'weekly'
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks