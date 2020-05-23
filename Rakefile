desc "Run"
task :run do
  sh "bundle exec rackup -p ${PORT:-3000} -o 0.0.0.0"
end

desc "Run - development mode /w auto reload"
task :dev do
  puts "running with rerun"
  sh "rerun -s KILL -p \"**/*.{rb}\" -- bundle exec rackup -p ${PORT:-3000}"
end

desc "Dump to json"
task :dump do
  require_relative './config/env'
  phrases = Phrase.all.map &:attributes
  # foos = Foo.all
  dump = Oj.dump(
    phrases: phrases,
    # ...: ...,
  )
  File.open("./db/dump.json", "w"){ |f| f.write dump }
  puts "dump saved in `db/dump.json` (#{phrases.size} entries)"
end

desc "Load dump to db"
task :load do
  require_relative './config/env'
  dump = Fie.read("./db/dump.json"){ |f| f.write dump }
  phrases = dump.fetch :phrases
  phrases.map do |phrase|
    Phrase.create phrase
  end
  puts "dump loaded in db (#{phrases.size} entries)"
end

task default: :run
