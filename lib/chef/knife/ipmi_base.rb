#
# Author:: Paul Thomas (<paul@paulthomas.eu>)
# Copyright:: Copyright (c) 2012 Paul Thomas
# License:: Apache License, Version 2.0
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

require 'chef/knife'
require 'chef/search/query'
require 'ruby-ipmitool'

class Chef
  class Knife
    module IpmiBase
      def ipmi
        unless name_args.size == 1
          puts "You need to specify a node to act on"
          show_usage
          exit 1
        end
        unless defined? config[:ipmi_user]
          puts "Please set your IPMI username in knife.rb"
          exit 1
        end
        unless defined? config[:ipmi_user]
          puts "Please set your IPMI password in knife.rb"
          exit 1
        end

        node = Chef::Node.load(name_args[0])
        unless node.has_key? 'ipmi'
          puts "Node had no IPMI details (is it running ohai-ipmi plugin?)"
        end
        @conn = Ipmitool.new(:host => node.ipmi.address, :user => Chef::Config[:knife][:ipmi_user], :password => Chef::Config[:knife][:ipmi_pass])
      end
    end
  end
end
