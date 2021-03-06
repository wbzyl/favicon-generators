class Favicon < Thor
  include Thor::Actions

  def self.source_root
    File.dirname(__FILE__)
  end

  desc "tomato SIZE", "create plasma:tomato favicon.png, SIZExSIZE, inside public/ directory"
  def tomato(size)
    inside('public') do
      run("convert -size #{size}x#{size} plasma:tomato-tomato favicon.png")
    end
  end

  desc "fractal SIZE", "create plasma:fractal favicon.png, SIZExSIZE, inside public/ directory"
  def fractal(size)
    inside('public') do
      run("convert -size #{size}x#{size} plasma:fractal favicon.png")
    end
  end

  desc "hues SIZE", "create blurred random hues favicon.png, SIZExSIZE, inside public/ directory"
  def hues(size)
    inside('public') do
      run("convert -size #{size}x#{size} xc: +noise Random random.png")
      run("convert random.png -virtual-pixel tile -blur 0x4 -auto-level random_4.png")
      run("convert random_4.png -separate -background white -compose ModulusAdd -flatten -channel R -combine +channel -set colorspace HSB -colorspace RGB favicon.png")
      run("rm random.png random_4.png")
    end
  end
end
