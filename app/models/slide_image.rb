class SlideImage < Image
  def image_params
    {
      small: '200x200>',
      main_image: '540x300>',
    }
  end

  def big_image_url
    image(:big)
  end
end