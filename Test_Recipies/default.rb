#
# Cookbook:: test_cookbook
# Recipe:: default
#

docker_service 'default' do
    action [:create, :start]
  end
  
  docker_image '6mmario/practicasa' do
    action :pull
  end
  
  docker_container 'test' do
    repo '6mmario/practicasa'
    port '8081:3000'
  end