# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = 'http://vasiliy-tataurov.ru'
SitemapGenerator::Sitemap.compress = false
SitemapGenerator::Sitemap.create_index = false
SitemapGenerator::Sitemap.include_root = false

SitemapGenerator::Sitemap.create do
  add root_path, priority: 1.0, :changefreq => 'daily'
  add works_path, priority: 0.9, :changefreq => 'monthly'
  add about_path, priority: 0.9, :changefreq => 'monthly'
  add contacts_path, priority: 0.9, :changefreq => 'monthly'
  Work.all.each do |work|
    add work_path(id: work.id_with_slug), priority: 0.9, :changefreq => 'monthly'
  end
end
