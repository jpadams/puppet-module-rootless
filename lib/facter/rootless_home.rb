require 'etc'
Facter.add("puppet_user_home") do
  confine :kernel => "Linux"
  setcode do
    Etc.getpwuid(Process.uid).dir
  end
end
