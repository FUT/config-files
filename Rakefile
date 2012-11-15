# Inspired by https://github.com/ryanb/dotfiles/blob/master/Rakefile

require 'rake'
require 'erb'
require 'pry'

def notice(message)
  system "echo \"\033[1;32m\n\n=========================================================\n  [INFO] #{message}\n\033[0m\""
end

def generate_erb(file)
  File.new(file, 'w').write ERB.new(File.new("#{file}.erb", 'r').read).result(binding)
end

notice "Link the dot files to user's home directory"
task :install do
  generate_erb 'gitconfig'

  %w{gitconfig gitignore pryrc gemrc}.each do |file|
    system "ln -vnfs #{File.expand_path(file)} ~/.#{file}"
  end
end
