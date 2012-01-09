#
# Cookbook Name:: pgbouncer
# Recipe:: default
# Author:: Christoph Krybus <ckrybus@googlemail.com>
#
# Copyright 2011, Christoph Krybus
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

package "pgbouncer" do
  action :upgrade
end

service "pgbouncer" do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true, :reload => true
end

template "/etc/pgbouncer/pgbouncer.ini" do
  source "pgbouncer.ini.erb"
  owner "root"
  group "root"
  mode "644"
  notifies :reload, resources(:service => "pgbouncer")
end

template "/etc/pgbouncer/userlist.txt" do
  source "userlist.txt.erb"
  owner "root"
  group "root"
  mode "644"
  notifies :reload, resources(:service => "pgbouncer")
end

template "/etc/default/pgbouncer" do
  source "pgbouncer.default.erb"
  owner "root"
  group "root"
  mode "644"
  notifies :reload, resources(:service => "pgbouncer")
end

service "pgbouncer" do
  action [:enable, :start]
end
