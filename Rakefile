require 'rubygems'

desc "Bower"
task :bower do
  sh "bower install"
end

desc "Clean"
task :clean do
  sh "rm ./CHANGELOG.md"
  sh "rm ./LICENSE"
  sh "rm ./.travis.yml"
  sh "echo 'Your new middleman project' > ./README.md"
end

desc "Magic task to clean up and install all the things"
task :bootstrap => [:bower, :clean] do
  sh "echo 'Magic'"
end
