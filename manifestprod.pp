include 'docker'

  docker::image {'6mmario/practicasa':
     image_tag => 'latest'
  }

  docker::run{'pruebas':
     image      => '6mmario/practicasa',
     ports      => ['8082:3000'],
  }
