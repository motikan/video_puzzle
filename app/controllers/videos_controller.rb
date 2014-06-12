class VideosController < ApplicationController

	def create
		file = params['hoge']
		File.open("public/videos/hogehoge.mp4", 'wb') { |f|
			 f.write(file.read) 
		}
		render 'create.html.erb'
	end

	def index
		@movie = Movie.new
		puts 'testsetse'
		render 'index.html.erb'
	end

end
