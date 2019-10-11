def get_arg
	input = ARGV
  return input
end

def make_big_file
	Dir.mkdir("#{get_arg[0]}")
end

def make_lib
	Dir.mkdir("#{get_arg[0]}/lib")
end

def make_rspec
	system("cd #{get_arg[0]} && rspec --init")
end

def make_env
	File.new("#{get_arg[0]}/.env","w")
end

def make_gitignore
	File.new("#{get_arg[0]}/.gitignore","w")
end

def make_readme
	file = File.new("#{get_arg[0]}/README.md", "w")
	file.puts("#{get_arg[0]} ruby program")
	file.close
end

def perform
	if get_arg.empty? || get_arg.size > 1
		puts "nike ta mere je veut un input pas plus pas moins"
		return
	end
	make_big_file
	make_lib
	make_env
	make_gitignore
	make_readme
	make_rspec
end

perform