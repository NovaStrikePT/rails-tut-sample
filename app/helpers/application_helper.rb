module ApplicationHelper
  # Return the full title on a per-page basis
  def full_title(page_title)
    # Full title = base_title + possibly | page_title
    base_title = "Ruby on Rails Tutorial Sample App"
    page_title.blank? ? base_title : "#{base_title} | #{page_title}"
  end
end
