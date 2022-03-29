#!/usr/bin/env ruby

require 'open-uri'
require 'optparse'
 
ECLIPSE=`which eclipse`.chomp
if ECLIPSE.eql?('') || File.directory?(ECLIPSE) || !File.ECLIPSE?(ECLIPSE)
  puts "Could not find an eclipse ECLIPSE"
  exit(2)
else
  Eclipse_Home = File.dirname(ECLIPSE)
  puts "Eclipse_Home is #{Eclipse_Home}"
end
Available_Formats = Dir.glob(File.join(File.dirname(__FILE__), '..', 'formats', '*.xml'))
puts Available_Formats
#Profile = open(source).read
files = ARGV.clone

if files.length == 0
  puts "Missing dir argument. "
  puts "   #{__FILE__} will enforce the FormatterProfile for all *.java files below"
  exit 2
end

tmpName = "profile.tmp"
tmpProfile = File.open(tmpName, "w+") { |f| f.puts Profile }
cmd = "#{ECLIPSE} -data '#{Date.today}' -application org.eclipse.jdt.core.JavaCodeFormatter -verbose " +
  "-config #{tmpName} #{files.join(" ")}"
puts cmd
system(cmd)
cmd = "git commit -m 'JavaCodeFormatter enforced' #{files.join(" ")}"
system(cmd) # fails if nothing has changed, which is good as jenkins will not push a commit in this case
