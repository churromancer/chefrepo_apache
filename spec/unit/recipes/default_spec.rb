#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'installs the correct package' do
      expect{chef_run}.to install_package('httpd')
    end
  end
end
