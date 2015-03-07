task :default => :sinatra

desc "Run the server via Sinatra"
task :sinatra do
	sh "ruby app.rb"
end

desc "Run the server via rackup"
task :r do
	sh "rackup"
end

desc "Run tests"
task :tests do
	sh "ruby test/test.rb"
end

desc "Run rspec tests"
task :spec do
	sh "rspec -I. spec/app_spec.rb"
end