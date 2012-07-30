spec = Gem::Specification.new do |s|
  s.name = 'yreader'
  s.version = '0.0.1'
  s.summary = "Yaml reader"
  s.description = %{Easy reader for yaml files}
  s.files = Dir['./*.rb'] + Dir['tests/**/*.rb']
  s.rdoc_options << '--title' <<  'YReader - Easy way to read Yaml files'
  s.author = "Bruno Moraes Souza"
  s.email = "to.bsouza@gmail.com"
  s.homepage = "http://samuraidev.com.br"
end