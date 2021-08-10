[app/sources/357503345.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:d9683cbf27264d9eaf5e420106ec2c0e100f8cb64b08ea9ea55016dc0e3ed223" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:71e12a2741d6e382340e94fef9654ac03291089f3e2d8ea0c049c5888c35dffe" [label="/bin/sh -c apt-get -y install redis-server redis-tools" shape="box"];
  "sha256:dbb5cd4955f1c747ce0509d5092bc6b75df3fd6a4ea6ccc208103bcf44e6dbb7" [label="sha256:dbb5cd4955f1c747ce0509d5092bc6b75df3fd6a4ea6ccc208103bcf44e6dbb7" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:d9683cbf27264d9eaf5e420106ec2c0e100f8cb64b08ea9ea55016dc0e3ed223" [label=""];
  "sha256:d9683cbf27264d9eaf5e420106ec2c0e100f8cb64b08ea9ea55016dc0e3ed223" -> "sha256:71e12a2741d6e382340e94fef9654ac03291089f3e2d8ea0c049c5888c35dffe" [label=""];
  "sha256:71e12a2741d6e382340e94fef9654ac03291089f3e2d8ea0c049c5888c35dffe" -> "sha256:dbb5cd4955f1c747ce0509d5092bc6b75df3fd6a4ea6ccc208103bcf44e6dbb7" [label=""];
}

