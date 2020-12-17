include 'docker'

  docker::image {'6mmario/practicasa':
     image_tag => 'latest'
  }

  docker::run{'pruebas':
     image      => '6mmario/practicasa',
     ports      => ['8081:3000'],
  }
