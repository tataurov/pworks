class WorkImage < Image
  def image_params
    {
      small: '200x200>',
      big: '1500x1500>',
      main_image: '1000x1000>'
    }
  end

  def big_image_url
    image(:big)
  end
end