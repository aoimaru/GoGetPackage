[app/sources/364663263.Dockerfile]
digraph {
  "sha256:43ab0ea9791271fcb1e124837d9743f930759c167ccb15db42ad9250958dd64e" [label="docker-image://docker.io/library/node:5-slim" shape="ellipse"];
  "sha256:6697cebbed1848fa344a27c860993df726aeaed0fe8dd25497f826f15abfad23" [label="/bin/sh -c yes '' | adduser --disabled-password horizon &&     mkdir -p /usr/horizon /usr/app /usr/certs" shape="box"];
  "sha256:9d2d4bc0b9efccb314bb7e4b8f12dbdf014d45f2589d1e42daa6b24441da2262" [label="/bin/sh -c apt update && apt install -y git" shape="box"];
  "sha256:4047610a89f49cac49812335b6f79d73422cb57c81d7fe7ff36bd7410410abc1" [label="local://context" shape="ellipse"];
  "sha256:4111133c87da77329b20fcfe6f491c802522d7f2d8fc76826a878de64b0dcbf4" [label="copy{src=/, dest=/usr/horizon/}" shape="note"];
  "sha256:9017a022f3f11ab0d9989baf80e635e63f74982b3a33d48b14d1b7bd0299b862" [label="mkdir{path=/usr/horizon}" shape="note"];
  "sha256:cb7ae30f740cd4123cce3471d027f145e6b93a814871732f2f1ed9c8bbb1dbbd" [label="/bin/sh -c cd test; ./setupDev.sh" shape="box"];
  "sha256:e5a153ac969ca7908dbdb1732605d121606907ab7bef77e6badca379dedb7e3f" [label="sha256:e5a153ac969ca7908dbdb1732605d121606907ab7bef77e6badca379dedb7e3f" shape="plaintext"];
  "sha256:43ab0ea9791271fcb1e124837d9743f930759c167ccb15db42ad9250958dd64e" -> "sha256:6697cebbed1848fa344a27c860993df726aeaed0fe8dd25497f826f15abfad23" [label=""];
  "sha256:6697cebbed1848fa344a27c860993df726aeaed0fe8dd25497f826f15abfad23" -> "sha256:9d2d4bc0b9efccb314bb7e4b8f12dbdf014d45f2589d1e42daa6b24441da2262" [label=""];
  "sha256:9d2d4bc0b9efccb314bb7e4b8f12dbdf014d45f2589d1e42daa6b24441da2262" -> "sha256:4111133c87da77329b20fcfe6f491c802522d7f2d8fc76826a878de64b0dcbf4" [label=""];
  "sha256:4047610a89f49cac49812335b6f79d73422cb57c81d7fe7ff36bd7410410abc1" -> "sha256:4111133c87da77329b20fcfe6f491c802522d7f2d8fc76826a878de64b0dcbf4" [label=""];
  "sha256:4111133c87da77329b20fcfe6f491c802522d7f2d8fc76826a878de64b0dcbf4" -> "sha256:9017a022f3f11ab0d9989baf80e635e63f74982b3a33d48b14d1b7bd0299b862" [label=""];
  "sha256:9017a022f3f11ab0d9989baf80e635e63f74982b3a33d48b14d1b7bd0299b862" -> "sha256:cb7ae30f740cd4123cce3471d027f145e6b93a814871732f2f1ed9c8bbb1dbbd" [label=""];
  "sha256:cb7ae30f740cd4123cce3471d027f145e6b93a814871732f2f1ed9c8bbb1dbbd" -> "sha256:e5a153ac969ca7908dbdb1732605d121606907ab7bef77e6badca379dedb7e3f" [label=""];
}

