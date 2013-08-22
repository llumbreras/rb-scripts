# Dir is the working directory
# Use glob() method to return an array of filename with txt suffix
# File is assigned to old_filename
# If old_filename includes the old_word use gsub to substitute
# Use File rename() method for renaming files




def find2replace (old_word,new_word)
  Dir.glob("*.txt").each do |file|
    old_filename = File.basename(file)
    if old_filename.include?(old_word)
      new_filename = File.basename(file).gsub(old_word,new_word)
      File.rename(file, new_filename)
      puts "Renamed #{file} to #{new_filename}"
    end
  end
end

find2replace("drama","fun")


