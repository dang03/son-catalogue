#!/bin/bash

##
## Copyright (c) 2015 SONATA-NFV, i2CAT Foundation
## ALL RIGHTS RESERVED.
##
## Licensed under the Apache License, Version 2.0 (the "License");
## you may not use this file except in compliance with the License.
## You may obtain a copy of the License at
##
##     http://www.apache.org/licenses/LICENSE-2.0
##
## Unless required by applicable law or agreed to in writing, software
## distributed under the License is distributed on an "AS IS" BASIS,
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
## See the License for the specific language governing permissions and
## limitations under the License.
##
## Neither the name of the SONATA-NFV, i2CAT Foundation
## nor the names of its contributors may be used to endorse or promote
## products derived from this software without specific prior written
## permission.
##
## This work has been performed in the framework of the SONATA project,
## funded by the European Commission under Grant number 671517 through
## the Horizon 2020 and 5G-PPP programmes. The authors would like to
## acknowledge the contributions of their colleagues of the SONATA
## partner consortium (www.sonata-nfv.eu).

# +------------------------+
# | Install Ruby libraries |
# +------------------------+

echo "Started installation of dependencies"
# Before installing the Catalogues API from source code, Ruby dependencies must be handled. 
# It is strongly recommended to use RVM in a fresh install to manage different Ruby versions and dependencies such gems required.

# Install Ruby on system
#sudo apt-get install -y ruby
sudo apt-get install -y libpq-dev

# Install RVM and dependencies
sudo apt-get install -y curl
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable --ruby=2.2.3
sleep 2
source /home/$(whoami)/.rvm/scripts/rvm
sleep 2
rvm rubygems latest
sleep 2

# Install RubyGems version 2.6.6 (optional)
#sudo wget http://production.cf.rubygems.org/rubygems/rubygems-2.6.6.tgz
#sudo tar xvf rubygems-2.6.6.tgz
#sudo ruby rubygems-2.6.6/setup.rb
#sudo rm rubygems-2.6.6.tgz

# +--------------------------+
# | Install Gem dependencies |
# +--------------------------+

echo "Installing Bundler"
gem install bundler

echo "Installation completed"
