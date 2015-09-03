module ApplicationHelper

   # --------------- For flexible theme, from: ------------------------------
   # http://rvg.me/2013/11/adding-a-bootstrap-3-layout-to-a-rails-4-project/
   

  def site_name
    # Change the value below between the quotes.
    "2015天主教學校經營領導研習營"
  end

  def site_url
    if Rails.env.production?
      # Place your production URL in the quotes below
      "http://jhs.shsh.ylc.edu.tw"
    else
      # Our dev & test URL
      "http://jhs.shsh.ylc.edu.tw"
    end
  end

  def meta_author
    # Change the value below between the quotes.
    "詹嘉隆"
  end

  def meta_description
    # Change the value below between the quotes.
    "這是一個用 Ruby on Rails 4 刻出來的網站"
  end

  def meta_keywords
    # Change the value below between the quotes.
    "學校 活動 報名表"
  end

  # Returns the full title on a per-page basis.
  # No need to change any of this we set page_title and site_name elsewhere.
  def full_title(page_title)
    if page_title.empty?
      site_name
    else
      "#{page_title} | #{site_name}"
    end
  end

  def flash_class(level)
     case level.to_sym
       when :notice then "alert alert-info"
       when :success then "alert alert-success"
       when :error then "alert alert-danger"
       when :danger then "alert alert-danger"
       when :warning then "alert alert-warning"
     end
  end

end



