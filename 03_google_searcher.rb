require 'launchy'
#recuperer largv
def recup
	print "veuillez rentrer l'ARGV"
	r=gets
	if r == nil
		puts 'voici, avant que le programme sinterrompte comment se servir de lARGV'
		break
	end
return r
end
#construire lurl
def constr_URL(ARGV)
	t=ARGV.split(" ")
	u=t.join("+")	
	v="https://www.google.com/search?q="
	url=v+u
	return url
end	
def google
	Launchy.open("http://www.google.com")	
end
def alias_search
	file=File.open("~/.bash_profile","a")
	file.puts("alias search = "ruby /home/MarieCLeo/programme_ruby/lib/03_google_searcher.rb"")
end
