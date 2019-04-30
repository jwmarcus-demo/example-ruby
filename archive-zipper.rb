# Create a zip archive of a folder full of stuff

require 'rubygems'
require 'zip'

folder = "./data"
input_filenames = ['MOCK_DATA_1.csv', 'MOCK_DATA_2.csv', 'MOCK_DATA_3.csv']

zipfile_name = "./data_backup.zip"

Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
  input_filenames.each do |filename|
    zipfile.add(filename, File.join(folder, filename))
  end
  zipfile.get_output_stream("myFile") { |f| f.write "myFile contains just this" }
end
