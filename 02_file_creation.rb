#creation dun dossier qui porte le nom de largv de lutilisateur
def create_folder2
	adresse='/home/marie/'
	adresse_complete = adresse +ARGV
	if ARGV.split(" ").length > 0
		adresse_complete = adresse + ARGV.split(" ")[0]
	elsif ARGV == nil
		puts "voici, acant l'interruption du programme, quelques précisions sur comment se servir de l'ARGV"
	end
	Dir.mkdir(adresse_complete)
end
def change_directory(name_directory)
	system("cd /home/marie/programme_ruby")
end

def get_folder_name
	return folder_name = ARGV.first
end
def create_folder(get_folder_name)
	Dir.mkdir(name)
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
#git init
def git_init
	system("git init")
end
#creation fichier env
def creation_env_deplac
	file = File.open(".env","w")
	system("mv .env gitignore")
end
#creation du dossier lib
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
def alias
	file=File.open("~/.bash_profile","a")
	file.puts("alias mkdiruby = "ruby /home/MarieCleo/programme_ruby/lib/mkdiruby.rb"")	
end
