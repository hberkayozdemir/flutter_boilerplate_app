FILENAME = "pubspec.yaml".freeze
SEARCH_KEY = "version: ".freeze

yaml_file = File.read(FILENAME)
version_line = ""

File.open(FILENAME) do |f|
  f.any? do |line|
      if line.include?(SEARCH_KEY)
          version_line = line
      end
   end
end

version = version_line.match(/[+]\d+/).to_s[1..].to_i
new_version = (version.to_i + 1)
new_version_content = "#{version_line.split("+")[0]}+#{new_version.to_s}\n"

content = File.read(FILENAME)
new_contents = content.gsub(version_line, new_version_content)

File.open(FILENAME, "w") {|file| file.puts new_contents }
