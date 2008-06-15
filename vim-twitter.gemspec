Gem::Specification.new do |s|
  s.name = "vim-twitter"
  s.version = "0.1.0"
  s.date = "2008-06-15"
  s.summary = "use twitter from vim"
  s.email = "remi@remitaylor.com"
  s.homepage = "http://github.com/remi/vim-twitter"
  s.description = "vim plugin for using twitter.  created to motivate me to work on vimilicious."
  s.has_rdoc = true
  s.rdoc_options = ["--quiet", "--title", "domain-finder", "--opname", "index.html", "--line-numbers", "--main", "README", "--inline-source"]
  s.extra_rdoc_files = ['README']
  s.authors = ["remi Taylor"]

  # generate using: $ ruby -e "puts Dir['**/**'].select{|x| File.file?x}.inspect"
  s.files = ["vim-twitter.gemspec", "COPYING", "lib/vim-twitter.rb", "README"]

  s.add_dependency("remi-vimilicious", ["> 0.0.0"])
  s.add_dependency("twitter", ["> 0.0.0"])
end
