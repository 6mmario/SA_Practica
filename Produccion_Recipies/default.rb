#
# Cookbook:: 6mmario_cookbook
# Recipe:: default
#

docker_service 'default' do
    action [:create, :start]
  end
  
  docker_image '6mmario/practicasa' do
    action :pull
  end
  
  docker_container 'produccion' do
    repo '6mmario/practicasa'
    port '8082:3000'
  end