$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__) + "/lib"))
require 'mizuho'

desc "Run unit tests"
task :test do
	ruby "-S spec -f s -c test/*_spec.rb"
end

desc "Build, sign & upload gem"
task 'package:release' do
	sh "gem build mizuho.gemspec --sign --key 0x0A212A8C"
	puts "Proceed with uploading the gem? [y/n]"
	if STDIN.readline == "y\n"
		sh "gem push mizuho-#{Mizuho::VERSION_STRING}.gem"
	else
		puts "Did not upload the gem."
	end
end
