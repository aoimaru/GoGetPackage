[app/sources/392426650.Dockerfile]
digraph {
  "sha256:820310e69daf592f3c5fb2d1a63d812c663479481a0af4e8a7a8bb8a3c22bd38" [label="docker-image://docker.io/library/ruby:2.6.1" shape="ellipse"];
  "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:d963cf2675d66ba5e9e476b7a0f01e2b87822e1c6b48d86ea6caf142ebab3ce8" [label="local://context" shape="ellipse"];
  "sha256:a905d4dea137ad9ec56cedc1b77679bd8de8d78b6850ef3a006b736999007a82" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Guardfile, dest=/usr/src/app/},copy{src=/config.ru, dest=/usr/src/app/}" shape="note"];
  "sha256:0d134ec0786a953d3fefd7aac785c4d7da216b2ecfc7147ea22c65f26ebb457a" [label="copy{src=/app, dest=/usr/src/app/app}" shape="note"];
  "sha256:89c347d6b8848d3229c6abdcf4d7010cdff04b74fac48e02de48f42cae507429" [label="copy{src=/config, dest=/usr/src/app/config}" shape="note"];
  "sha256:9363fd2692df0dacda14082efbbb506951958f4b88e30fc43da0b00c8ce028f3" [label="copy{src=/spec, dest=/usr/src/app/spec}" shape="note"];
  "sha256:9f376a31796d20bb16a136f9ebcf7c650a7f360626c6c2ff95dcbe8d11f74473" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:f1d57dfc2a98bd7bafd96f34bd2aa4fd5fcabd64f6e39650f3432792f222d7ed" [label="sha256:f1d57dfc2a98bd7bafd96f34bd2aa4fd5fcabd64f6e39650f3432792f222d7ed" shape="plaintext"];
  "sha256:820310e69daf592f3c5fb2d1a63d812c663479481a0af4e8a7a8bb8a3c22bd38" -> "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" [label=""];
  "sha256:6c3ae7c3464b8945fdbba8e5a89cbf5faac9bcb497d83e1dc2d75215033e7ec7" -> "sha256:a905d4dea137ad9ec56cedc1b77679bd8de8d78b6850ef3a006b736999007a82" [label=""];
  "sha256:d963cf2675d66ba5e9e476b7a0f01e2b87822e1c6b48d86ea6caf142ebab3ce8" -> "sha256:a905d4dea137ad9ec56cedc1b77679bd8de8d78b6850ef3a006b736999007a82" [label=""];
  "sha256:a905d4dea137ad9ec56cedc1b77679bd8de8d78b6850ef3a006b736999007a82" -> "sha256:0d134ec0786a953d3fefd7aac785c4d7da216b2ecfc7147ea22c65f26ebb457a" [label=""];
  "sha256:d963cf2675d66ba5e9e476b7a0f01e2b87822e1c6b48d86ea6caf142ebab3ce8" -> "sha256:0d134ec0786a953d3fefd7aac785c4d7da216b2ecfc7147ea22c65f26ebb457a" [label=""];
  "sha256:0d134ec0786a953d3fefd7aac785c4d7da216b2ecfc7147ea22c65f26ebb457a" -> "sha256:89c347d6b8848d3229c6abdcf4d7010cdff04b74fac48e02de48f42cae507429" [label=""];
  "sha256:d963cf2675d66ba5e9e476b7a0f01e2b87822e1c6b48d86ea6caf142ebab3ce8" -> "sha256:89c347d6b8848d3229c6abdcf4d7010cdff04b74fac48e02de48f42cae507429" [label=""];
  "sha256:89c347d6b8848d3229c6abdcf4d7010cdff04b74fac48e02de48f42cae507429" -> "sha256:9363fd2692df0dacda14082efbbb506951958f4b88e30fc43da0b00c8ce028f3" [label=""];
  "sha256:d963cf2675d66ba5e9e476b7a0f01e2b87822e1c6b48d86ea6caf142ebab3ce8" -> "sha256:9363fd2692df0dacda14082efbbb506951958f4b88e30fc43da0b00c8ce028f3" [label=""];
  "sha256:9363fd2692df0dacda14082efbbb506951958f4b88e30fc43da0b00c8ce028f3" -> "sha256:9f376a31796d20bb16a136f9ebcf7c650a7f360626c6c2ff95dcbe8d11f74473" [label=""];
  "sha256:9f376a31796d20bb16a136f9ebcf7c650a7f360626c6c2ff95dcbe8d11f74473" -> "sha256:f1d57dfc2a98bd7bafd96f34bd2aa4fd5fcabd64f6e39650f3432792f222d7ed" [label=""];
}

