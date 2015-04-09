class Blog
	def initialize
		@post = []
	end
	def addPost (newPost)
#Here I try to add an object blog, post an array of objects
		@post.push(newPost)
	end
	def printPost
	    @post.each do |x|
	        puts x.printPost
	    end
	end
end
class Post
	def initialize title, date, text, premium
		@title = title
		@date = date
		@text = text
		@premium = premium
	end
	def printPost
		if @premium
			puts "It´s a Sponsored post !! #{@title} The partner is Cool \n #{@date} \n ****************** \n #{@text}"
		else
			puts "#{@title} \n #{@date} \n ****************** \n #{@text}"
		end
	end
end
myBlog = Blog.new
firstPost = Post.new("First Post", "21/12/2015", "This is my first post on my first blog",false)
secondPost = Post.new("Second Post", "11/10/2014", "This is my second post on my first blog",true)
thirdPost = Post.new("Third Post", "06/06/2014", "This is my third post on my first blog",false)
fourthPost = Post.new("Fourth Post", "05/05/2014", "This is my fourth port on my first blog", true)
myBlog.addPost(firstPost)
myBlog.addPost(secondPost)
myBlog.addPost(thirdPost)
myBlog.addPost(fourthPost)
myBlog.printPost