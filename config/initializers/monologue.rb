Monologue::User.class_eval do
  self.table_name = 'users'
end

Monologue.config do |config|
  config.site_name = "Healthy For Real"
  config.site_subtitle = "The food we eat"
  config.site_url = "http://healthyforreal.com"

  config.meta_description = "Is the food you get from restaurants healthy, vegetarian, local"
  config.meta_keyword = "food, "

  config.admin_force_ssl = false
  config.posts_per_page = 10

  config.disqus_shortname = "healthyforreal"

  # LOCALE
  config.twitter_locale = "en" # "fr"
  config.facebook_like_locale = "en_US" # "fr_CA"
  config.google_plusone_locale = "en"

  # config.layout               = "layouts/application"

  # ANALYTICS
  # config.gauge_analytics_site_id = "YOUR COGE FROM GAUG.ES"
  # config.google_analytics_id = "YOUR GA CODE"

  config.sidebar = ["latest_posts", "latest_tweets", "categories", "tag_cloud"]


  #SOCIAL
  # config.twitter_username = "myhandle"
  # config.facebook_url = "https://www.facebook.com/myhandle"
  # config.facebook_logo = 'logo.png'
  # config.google_plus_account_url = "https://plus.google.com/u/1/.../posts"
  # config.linkedin_url = "http://www.linkedin.com/in/myhandle"
  # config.github_username = "myhandle"
  # config.show_rss_icon = true

end
