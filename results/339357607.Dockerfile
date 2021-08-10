[app/sources/339357607.Dockerfile]
digraph {
  "sha256:01c04229025ce2db647f5b1ac1eaccfcf5845c614404fa16bef71eb0f7d4b8bb" [label="docker-image://docker.io/codait/max-base:v1.1.3" shape="ellipse"];
  "sha256:24cba6cdbc1e628bcbeab55ef3f5e3df61b7dbe7f2bb021416e930dc5f14b9b1" [label="mkdir{path=/workspace}" shape="note"];
  "sha256:16c0525a2d2b21be8622193398130317320da62cc6238b3f04dfac6223d468a7" [label="/bin/sh -c wget -nv --show-progress --progress=bar:force:noscroll ${model_bucket}/${model_file} --output-document=assets/${model_file} &&   tar -x -C assets/ -f assets/${model_file} -v && rm assets/${model_file}" shape="box"];
  "sha256:154875209fa41113ee1e85124ecde409a37829bea33c827789022ab304ee402b" [label="/bin/sh -c apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:3279c6e5e6b359f31b3403f9d0754d1ef65cf0539f1679d33316d0910b9e2b29" [label="local://context" shape="ellipse"];
  "sha256:baff376533cb7701c7e7b3a83bf2e60a4a94eb1551f1f2e490f998461ca8ca41" [label="copy{src=/requirements.txt, dest=/workspace}" shape="note"];
  "sha256:0bfb944fa633e6d0df7301318ecb549a97bda23881220d118edde061bb67c393" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:f7d57c01b08209721afb0317536c1b3fa85e3a8f71cba0e871c2c1a35065e63d" [label="copy{src=/, dest=/workspace}" shape="note"];
  "sha256:d9a46c9a5d1d492f31b7a14bf0b19e5a73cce0adc9397effe0ed434fea92168b" [label="/bin/sh -c md5sum -c md5sums.txt" shape="box"];
  "sha256:c6c8de533ef0d15054bab1cfda40e7852c8b0cab943f0fa972ffe68db8d76bcc" [label="sha256:c6c8de533ef0d15054bab1cfda40e7852c8b0cab943f0fa972ffe68db8d76bcc" shape="plaintext"];
  "sha256:01c04229025ce2db647f5b1ac1eaccfcf5845c614404fa16bef71eb0f7d4b8bb" -> "sha256:24cba6cdbc1e628bcbeab55ef3f5e3df61b7dbe7f2bb021416e930dc5f14b9b1" [label=""];
  "sha256:24cba6cdbc1e628bcbeab55ef3f5e3df61b7dbe7f2bb021416e930dc5f14b9b1" -> "sha256:16c0525a2d2b21be8622193398130317320da62cc6238b3f04dfac6223d468a7" [label=""];
  "sha256:16c0525a2d2b21be8622193398130317320da62cc6238b3f04dfac6223d468a7" -> "sha256:154875209fa41113ee1e85124ecde409a37829bea33c827789022ab304ee402b" [label=""];
  "sha256:154875209fa41113ee1e85124ecde409a37829bea33c827789022ab304ee402b" -> "sha256:baff376533cb7701c7e7b3a83bf2e60a4a94eb1551f1f2e490f998461ca8ca41" [label=""];
  "sha256:3279c6e5e6b359f31b3403f9d0754d1ef65cf0539f1679d33316d0910b9e2b29" -> "sha256:baff376533cb7701c7e7b3a83bf2e60a4a94eb1551f1f2e490f998461ca8ca41" [label=""];
  "sha256:baff376533cb7701c7e7b3a83bf2e60a4a94eb1551f1f2e490f998461ca8ca41" -> "sha256:0bfb944fa633e6d0df7301318ecb549a97bda23881220d118edde061bb67c393" [label=""];
  "sha256:0bfb944fa633e6d0df7301318ecb549a97bda23881220d118edde061bb67c393" -> "sha256:f7d57c01b08209721afb0317536c1b3fa85e3a8f71cba0e871c2c1a35065e63d" [label=""];
  "sha256:3279c6e5e6b359f31b3403f9d0754d1ef65cf0539f1679d33316d0910b9e2b29" -> "sha256:f7d57c01b08209721afb0317536c1b3fa85e3a8f71cba0e871c2c1a35065e63d" [label=""];
  "sha256:f7d57c01b08209721afb0317536c1b3fa85e3a8f71cba0e871c2c1a35065e63d" -> "sha256:d9a46c9a5d1d492f31b7a14bf0b19e5a73cce0adc9397effe0ed434fea92168b" [label=""];
  "sha256:d9a46c9a5d1d492f31b7a14bf0b19e5a73cce0adc9397effe0ed434fea92168b" -> "sha256:c6c8de533ef0d15054bab1cfda40e7852c8b0cab943f0fa972ffe68db8d76bcc" [label=""];
}

