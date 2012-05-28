require "open-uri"

remote_base_url = "http://en.wikipedia.org/wiki"
remote_page_name = "Steve_Wozniak"
remote_full_url = remote_base_url + "/" + remote_page_name



somedata = open(remote_full_url).read
my_local_filename = "my_copy_of-" + remote_page_name + ".html"

puts "Writing to: " + my_local_filename

my_local_file = open(my_local_filename, "w")
my_local_file.write(somedata)
my_local_file.close

file_for_reading = open(my_local_filename, "r")
 puts file_for_reading.read
file_for_reading.close
