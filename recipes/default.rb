#
# Cookbook Name:: TRF
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
##########################################################

#include_recipe 'build-essential'

##########################################################
# here for use by serverspec


##########################################################
# package install


##########################################################
# main recipe

remote_file "#{node['TRF']['install_dir']}/trf" do
  source node['TRF']['url']
  mode 0755
  action :create_if_missing
end

##########################################################
##########################################################
