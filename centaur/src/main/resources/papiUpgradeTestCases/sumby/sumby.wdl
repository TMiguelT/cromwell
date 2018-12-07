task sum {
  File gumby
  command {
    /usr/bin/md5sum ${gumby} > file.md5
  }
  output {
    File out = "file.md5"
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

workflow sumby {
  call sum
}
