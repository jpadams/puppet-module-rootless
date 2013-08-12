
require 'etc'
Facter.add("puppet_user") do
  setcode do
    Etc.getpwuid(Process.uid).name
  end
end

Facter.add("puppet_group") do
  setcode do
    Etc.getpwuid(Process.gid).name
  end
end
