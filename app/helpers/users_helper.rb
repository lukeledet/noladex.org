module UsersHelper
  def display_photo(avatar)
    #default for images that havent been converted over.
    width = height = 300
    style = ""

    unless avatar.width.blank? || avatar.height.blank?
      if avatar.width > avatar.height
        width = (avatar.width * 300) / avatar.height
        height = 300
        style = 'left: -' + ((width-300)/2).to_s  + 'px;'
      else
        height = (avatar.height * 300) / avatar.width
        width = 300
        style = 'top: -' + ((height-300)/2).to_s  + 'px;'
      end
    end
    return image_tag avatar.url, {:width => width, :height => height, :style => style}
  end
end
