task default: :test

task test: 'Gemfile.lock' do
  sh "rspec"
  sh "cucumber -f message --out messages.ndjson -f pretty"
end

task rspec: 'Gemfile.lock' do
  sh "rspec"
end

task cucumber: 'Gemfile.lock' do
  sh "cucumber -f message --out messages.ndjson -f pretty"
end

file 'Gemfile.lock' => 'Gemfile' do
  sh "bundle"
end
