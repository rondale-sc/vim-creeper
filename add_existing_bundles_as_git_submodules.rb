Dir.glob("./bundle/*") do |git_dir|
 output = `cd #{git_dir} && git remote show origin` 
 output =~ /Fetch URL: (.+)$/
 url = $1 
 puts "Removing #{git_dir}, adding submodule for #{url}."
 puts output
# `rm -rf #{git_dir} && git rm #{git_dir}  && git commit -m "Removed #{git_dir}: auto-message." && git submodule add #{url} #{git_dir}`
end
