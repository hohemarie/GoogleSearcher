#architecture du dossier
#app.rb
#Gemfile
#Gemfile.lock
#.env
#.gitignore
#lib
#---app
#------application.rb
#------email_sender.rb
#---views
#------views.rb
#spec
#------application_spec.rb
#------email_sender_spec.rb
#------spec_helper.rb

def parent_directory
  system("cd ..")
end

def create_folder2
  adresse='/home/marie/'
  adresse_complete = adresse + ARGV.split(" ")[0]
  if ARGV == nil
    puts "voici, acant l'interruption du programme, quelques précisions sur comment se servir de l'ARGV"
  end
  Dir.mkdir(adresse_complete)
end

def change_directory_project
  system("cd "+adresse_complete)
end

def change_directory(dir_name)
  system("cd "+dir_name)
end

def get_folder_name
  return folder_name = ARGV.first
end

def create_folder(folder_name)
  Dir.mkdir(folder_name)
end

#creation du fichier gemfile avec les gems de thp

def create_gemfile_and_w
  file=File.open("Gemfile","a")
  file.puts("""
source = "https://rubygems.org"
ruby '2.5.1'
gem 'pry'
gem 'watir'
gem 'mechanize'
gem 'nokogiri'
gem 'dotenv'
gem 'twitter'
gem 'rubocop', '~> 0.57.2'
gem 'pry'
gem 'rspec'
gem 'minitest'
gem 'rails'
gem 'list'
gem 'bundler'
""")	
end

def git_init
  system("git init")
end

def create_file(file_name)
  system("touch "+file_name)
end

def creation_env_deplac
  file = File.open(".env","w")
  system("mv .env gitignore")
end

def creation_lib
  Dir.mkdir("lib")
end

#rspec --init

def rspec
  system("rspec --init")
end

#creation dun fichier readme

def readme
  file=File.open("README.md","a")
  file.puts("This is a Ruby program. Ceci est un programme Ruby.")
end

#alias soccupant de pouvoir appeler mon programme avec mkdiruby

def create_alias
  file=File.open("~/.bash_profile","a")
  file.puts("alias mkdiruby = "ruby /home/MarieCleo/programme_ruby/lib/mkdiruby.rb"")	
end

def perforn
  create_folder2
  change_directory_project
  creation_lib
  change_directory("lib")
  create_folder("app")
  change_directory("app")
  create_file("application.rb")
  create_file("email_sender.rb")
  parent_directory
  create_folder("views")
  change_directory("views")
  create_file("views.rb")
  parent_directory
  parent_directory
  git_init
  rspec
  create_folder("gitignore")
  creation_env_deplac
  readme
  create_alias  
end
