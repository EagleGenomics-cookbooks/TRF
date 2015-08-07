require 'serverspec'
require_relative './spec_helper'

# Required by serverspec
set :backend, :exec

describe file("#{ENV['TRF_DIR']}/trf") do
  it { should be_file }
  it { should be_mode 755 }
end

describe command('which trf') do
  its(:exit_status) { should eq 0 }
end

version = ENV['TRF_VERSION'].gsub(/^(\d)/, '\1.')

describe command('trf') do
  its(:exit_status) { should eq 255 }
  its(:stderr) { should contain(version) }
end
