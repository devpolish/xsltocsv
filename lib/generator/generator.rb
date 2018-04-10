module Generator
  def self.generate(filename='file.csv', data)
    filename ||= 'file.csv'
    File.open(filename, 'wb') do |f|
      f.write(data)
      f.close
    end
  end
end
