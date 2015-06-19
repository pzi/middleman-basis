require 'rubygems'

desc "Bower dependencies"
task :bower do
  puts ">> Installing Bower dependencies"
  sh "bower install"
end

basis_files_to_delete = FileList.new("./CHANGELOG.md", "./LICENSE", "./.travis.yml")

desc "Clean up project folder"
task :clean do
  puts ">> Removing unnecessary files"

  # Remove middleman-basis specific files
  FileUtils.rm basis_files_to_delete

  # Overwrite middleman-basis README content
  File.open("./README.md", 'w') { |file| file.write("# Your new Middleman project") }
end

desc "To be run after installing middleman-basis template"
task :bootstrap => [:bower, :clean] do
  puts "\nThank you for using Middleman Basis!"
end
