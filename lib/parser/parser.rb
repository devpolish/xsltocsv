require 'optparse'
require 'pp'
require 'colorize'
OPTIONS = {}
parse = OptionParser.new do |ps|
  ps.banner = 'ruby xsl2csv <options> <file>'
  ps.separator ''
  ps.on('-o', '--output-name', 'Output file name') do |filename|
    OPTIONS[:filename] = filename
  end
  ps.on('-f', '--file ') do |file|
    OPTIONS[:file] = file
  end
end
parse.parse!
if OPTIONS[:file].nil?
  puts "You must provide at least one file".red
  exit
end
