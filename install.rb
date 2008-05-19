
def run_command(cmd)
  puts "* Running #{cmd}"
  puts %x(cmd)
end

run_command "git submodule init"
run_command "git submodule update"
