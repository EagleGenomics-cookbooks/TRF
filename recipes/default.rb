#
# Cookbook Name:: TRF
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
##########################################################

##########################################################
# here for use by serverspec

magic_shell_environment 'TRF_VERSION' do
  value node['TRF']['version']
end

magic_shell_environment 'TRF_DIR' do
  value node['TRF']['dir']
end

##########################################################
# package install

##########################################################
# main recipe

remote_file "#{node['TRF']['dir']}/trf" do
  source node['TRF']['url']
  mode 0755
  action :create_if_missing
end

##########################################################
##########################################################
