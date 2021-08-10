[app/sources/252770749.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:d692055da107f6ab37af76884c9557711676f65e3ae170b30ed0eafabf955440" [label="/bin/sh -c apt-get update && apt-get install -y git gdal-bin python-gdal libfftw3-dev cmake" shape="box"];
  "sha256:3d48e0adc81fbc654adc7ab641a60640ba0eb47319441de5fdb7161c99c69904" [label="local://context" shape="ellipse"];
  "sha256:31852a18dc27c478b9f37c121113ea29f37e3c4b13365d5d68f6ce1be7231a6d" [label="copy{src=/install.sh, dest=/bin/install.sh}" shape="note"];
  "sha256:be2fca42bc265c9bac4fa01ed7ed21b880a938aa3c0c55ab87cfb8f63ca91bf0" [label="mkdir{path=/LSDTopoTools}" shape="note"];
  "sha256:8ecf2de8fc57769e06bc8145cf2ce938443e362e05598053cec34e429f341f71" [label="sha256:8ecf2de8fc57769e06bc8145cf2ce938443e362e05598053cec34e429f341f71" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:d692055da107f6ab37af76884c9557711676f65e3ae170b30ed0eafabf955440" [label=""];
  "sha256:d692055da107f6ab37af76884c9557711676f65e3ae170b30ed0eafabf955440" -> "sha256:31852a18dc27c478b9f37c121113ea29f37e3c4b13365d5d68f6ce1be7231a6d" [label=""];
  "sha256:3d48e0adc81fbc654adc7ab641a60640ba0eb47319441de5fdb7161c99c69904" -> "sha256:31852a18dc27c478b9f37c121113ea29f37e3c4b13365d5d68f6ce1be7231a6d" [label=""];
  "sha256:31852a18dc27c478b9f37c121113ea29f37e3c4b13365d5d68f6ce1be7231a6d" -> "sha256:be2fca42bc265c9bac4fa01ed7ed21b880a938aa3c0c55ab87cfb8f63ca91bf0" [label=""];
  "sha256:be2fca42bc265c9bac4fa01ed7ed21b880a938aa3c0c55ab87cfb8f63ca91bf0" -> "sha256:8ecf2de8fc57769e06bc8145cf2ce938443e362e05598053cec34e429f341f71" [label=""];
}

