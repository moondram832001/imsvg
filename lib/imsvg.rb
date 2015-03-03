require "imsvg/version"
require "mini_magick"

class Imsvg
	def convert(params = {})
    	puts "hello world"
		image = MiniMagick::Image.open("/tmp/image-061.png")
		puts image.path #=> "/var/folders/k7/6zx6dx6x7ys3rv3srh0nyfj00000gn/T/magick20140921-75881-1yho3zc.jpg"
		image.resize "50%"
		image.format "jpg"
		image.write "output.jpg"
		"hello world!"
	end
end
