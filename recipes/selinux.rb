
execute "close selinux" do
  command <<-"EOH"
    sed -i 's/^SELINUX=enforcing/SELINUX=permissive/g' /etc/selinux/config
    setenforce 0
  EOH
  action :run
end
