[app/sources/315795935.Dockerfile]
digraph {
  "sha256:1e5e50d3c86ede0340aa464a6dd999b3aece7d2badfe4c3f7ea156bc66bcfe65" [label="docker-image://docker.io/library/node:7.2" shape="ellipse"];
  "sha256:0f9ade3807c31ddc32ae726ec753c3e3a54a189f604431c6cf212863569a26c5" [label="/bin/sh -c apt-get update && apt-get install -y npm git && apt-get clean && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:9ef4056263f4b4c1f5ec08afd3fbac3518fd741d7401d06795ac80c54a4ce744" [label="/bin/sh -c git clone --depth=1 https://github.com/Birdrock/brodocs.git" shape="box"];
  "sha256:bcf51f9f9c2864ee435d7f5f9ea86f1f23f0b3bb8c514edb8bfd2093b9715f19" [label="mkdir{path=/brodocs}" shape="note"];
  "sha256:b5317a96def88bd6f875d0dc6b0e6e4338f36bd81bafc3994dc633ec65ac6051" [label="/bin/sh -c npm install" shape="box"];
  "sha256:60ddd2f781600803e036b785d34fc21cd38baa6d0b7e7618d7c1f32d5feefa23" [label="local://context" shape="ellipse"];
  "sha256:53fabc100fe731473279a2eab1f5f1cb12277d9acda8f84dfcb39c1952ee866c" [label="copy{src=/runbrodocs.sh, dest=/brodocs/}" shape="note"];
  "sha256:a9f1b34d0e0def309696142e2df16e9ab147432b9d952c35b23d0521c7a23874" [label="/bin/sh -c rm -rf ./documents/*" shape="box"];
  "sha256:1c494fae37d338da88307bce66430d553a38c907320f2cbda0a609205750e563" [label="/bin/sh -c chmod -R 777 ." shape="box"];
  "sha256:a322ab5f2ed64cd06cc32620263d7a1cd8aa588d7f07d1c7f452ed502a57dbb2" [label="sha256:a322ab5f2ed64cd06cc32620263d7a1cd8aa588d7f07d1c7f452ed502a57dbb2" shape="plaintext"];
  "sha256:1e5e50d3c86ede0340aa464a6dd999b3aece7d2badfe4c3f7ea156bc66bcfe65" -> "sha256:0f9ade3807c31ddc32ae726ec753c3e3a54a189f604431c6cf212863569a26c5" [label=""];
  "sha256:0f9ade3807c31ddc32ae726ec753c3e3a54a189f604431c6cf212863569a26c5" -> "sha256:9ef4056263f4b4c1f5ec08afd3fbac3518fd741d7401d06795ac80c54a4ce744" [label=""];
  "sha256:9ef4056263f4b4c1f5ec08afd3fbac3518fd741d7401d06795ac80c54a4ce744" -> "sha256:bcf51f9f9c2864ee435d7f5f9ea86f1f23f0b3bb8c514edb8bfd2093b9715f19" [label=""];
  "sha256:bcf51f9f9c2864ee435d7f5f9ea86f1f23f0b3bb8c514edb8bfd2093b9715f19" -> "sha256:b5317a96def88bd6f875d0dc6b0e6e4338f36bd81bafc3994dc633ec65ac6051" [label=""];
  "sha256:b5317a96def88bd6f875d0dc6b0e6e4338f36bd81bafc3994dc633ec65ac6051" -> "sha256:53fabc100fe731473279a2eab1f5f1cb12277d9acda8f84dfcb39c1952ee866c" [label=""];
  "sha256:60ddd2f781600803e036b785d34fc21cd38baa6d0b7e7618d7c1f32d5feefa23" -> "sha256:53fabc100fe731473279a2eab1f5f1cb12277d9acda8f84dfcb39c1952ee866c" [label=""];
  "sha256:53fabc100fe731473279a2eab1f5f1cb12277d9acda8f84dfcb39c1952ee866c" -> "sha256:a9f1b34d0e0def309696142e2df16e9ab147432b9d952c35b23d0521c7a23874" [label=""];
  "sha256:a9f1b34d0e0def309696142e2df16e9ab147432b9d952c35b23d0521c7a23874" -> "sha256:1c494fae37d338da88307bce66430d553a38c907320f2cbda0a609205750e563" [label=""];
  "sha256:1c494fae37d338da88307bce66430d553a38c907320f2cbda0a609205750e563" -> "sha256:a322ab5f2ed64cd06cc32620263d7a1cd8aa588d7f07d1c7f452ed502a57dbb2" [label=""];
}

