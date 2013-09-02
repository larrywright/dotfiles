require 'rake'

desc "install the dot files into user's home directory"
task :install do
  files = Dir['**'] - %w[Rakefile README.md LICENSE]
  files.each do |file|
    source = File.expand_path(file)
    dest = File.expand_path("~/.#{file}")
    unless File.symlink?(dest)
      File.symlink(source,dest)
    end
  end
end
