[app/sources/421917286.Dockerfile]
digraph {
  "sha256:bcf9dd9311d787ccacb1137962356c1d702eba187a71fa5a08e34d8a6723f0bf" [label="docker-image://docker.io/ufoym/deepo:all-py36-cu90" shape="ellipse"];
  "sha256:9b05cdd0181744220f0ac98208bdbb9691e8f1e10c970d41fddae792f5376f94" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends          unzip          &&     rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*" shape="box"];
  "sha256:53c6572c00d9834223b074c9537f99a24f98138315e145f64f2871d3ef21a32a" [label="/bin/sh -c wget \"https://www.dropbox.com/s/911w7fhlkm9giju/resp-master.zip?dl=0\" && unzip resp-master.zip?dl=0 && cd resp-master/ && pip install --ignore-installed --upgrade .  && pip install huepy tqdm" shape="box"];
  "sha256:5a0b04a569ac4603fb3fb0d7d2c794121305c65fd2c1fd6a260e1949cfe2b8fb" [label="mkdir{path=/src}" shape="note"];
  "sha256:d70224067278242ef94da65bbdc5bac2c7d9bb2ebbaaadfad1602f0dff9516ea" [label="sha256:d70224067278242ef94da65bbdc5bac2c7d9bb2ebbaaadfad1602f0dff9516ea" shape="plaintext"];
  "sha256:bcf9dd9311d787ccacb1137962356c1d702eba187a71fa5a08e34d8a6723f0bf" -> "sha256:9b05cdd0181744220f0ac98208bdbb9691e8f1e10c970d41fddae792f5376f94" [label=""];
  "sha256:9b05cdd0181744220f0ac98208bdbb9691e8f1e10c970d41fddae792f5376f94" -> "sha256:53c6572c00d9834223b074c9537f99a24f98138315e145f64f2871d3ef21a32a" [label=""];
  "sha256:53c6572c00d9834223b074c9537f99a24f98138315e145f64f2871d3ef21a32a" -> "sha256:5a0b04a569ac4603fb3fb0d7d2c794121305c65fd2c1fd6a260e1949cfe2b8fb" [label=""];
  "sha256:5a0b04a569ac4603fb3fb0d7d2c794121305c65fd2c1fd6a260e1949cfe2b8fb" -> "sha256:d70224067278242ef94da65bbdc5bac2c7d9bb2ebbaaadfad1602f0dff9516ea" [label=""];
}

