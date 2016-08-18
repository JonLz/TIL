directory = ARGV[0]
directories = Dir.glob('*').select {|f| File.directory? f}

unless ARGV.length > 0
	puts 'Use: new.rb <directory> <title of new file>'
	exit
end

unless directories.include? directory
	puts 'Invalid directory. Possible directories are:'
	puts directories
	exit
end

title = ARGV.drop(1)

unless title.length > 0
	puts 'Please provide a title and try again'
	exit
end

filename = title.join('-')
full_path = directory + '/' + filename + '.md'

if File.file?(full_path)
	puts 'File already exists, bailing'
	exit
end

header = title.join(' ').capitalize!

File.open(full_path, "w") {|f| 
	f.puts "# " + header
	f.puts()
}

%x( subl #{full_path} )