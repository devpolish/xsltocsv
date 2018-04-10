require 'roo'
require_relative './parser/parser'
require_relative './generator/generator'
file_copy = Roo::Spreadsheet.open(OPTIONS[:file])

Generator.generate(OPTIONS[:filename], file_copy.to_csv)

