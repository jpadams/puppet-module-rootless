
require 'etc'
Facter.add("puppet_user") do
  confine :kernel => "Linux"
  setcode do
    Etc.getpwuid(Process.uid).name
  end
end

Facter.add("puppet_group") do
  confine :kernel => "Linux"
  setcode do
    Etc.getgrgid(Process.gid).name
  end
end
