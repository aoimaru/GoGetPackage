[app/sources/193311208.Dockerfile]
digraph {
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" [label="docker-image://docker.io/library/ubuntu:latest" shape="ellipse"];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:4acc95d6cb38320d3738446eea26cc3889690ab38f3fa2ebe4b13db7782d150c" [label="/bin/sh -c apt-get install -y nasm binutils" shape="box"];
  "sha256:0ff851a5790c99cd145fb38e1ac799eb2973b4b8d1cf32c92db4771179d0b9f2" [label="/bin/sh -c groupadd glot" shape="box"];
  "sha256:a67bf435ef307e1b6d1efd456a9ecc4a1a567f85520d361604f7a77458353f9b" [label="/bin/sh -c useradd -m -d /home/glot -g glot -s /bin/bash glot" shape="box"];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" [label="https://github.com/prasmussen/glot-code-runner/releases/download/2017-04-12/runner" shape="ellipse"];
  "sha256:5e7ccb8bf2e12ddbf76a086217f29b0abe459d02d9585cc3114b4b7e143edc31" [label="copy{src=/runner, dest=/home/glot/runner}" shape="note"];
  "sha256:ce774bac439358fe453d5499430096b03c7d926ed16dde570f589089c45ec118" [label="/bin/sh -c chmod +x /home/glot/runner" shape="box"];
  "sha256:4fce2d3e13bdb240d551c22c038907cabcdb5f5bf5e1709d990e7566cf7a9d94" [label="mkdir{path=/home/glot}" shape="note"];
  "sha256:58c1cd5846bf65269c79a0226dcb27b36e92047503f0cd4aa1021eb450970a14" [label="sha256:58c1cd5846bf65269c79a0226dcb27b36e92047503f0cd4aa1021eb450970a14" shape="plaintext"];
  "sha256:0a5f349eacf4edfd2fc1577c637ef52a2ed3280d9d5c0ab7f2e4c4052e7d6c9f" -> "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" [label=""];
  "sha256:f7347d41953afe38f1ed7f42987ef9eeb38abe2cdeebfe858ffb6140c62e1f49" -> "sha256:4acc95d6cb38320d3738446eea26cc3889690ab38f3fa2ebe4b13db7782d150c" [label=""];
  "sha256:4acc95d6cb38320d3738446eea26cc3889690ab38f3fa2ebe4b13db7782d150c" -> "sha256:0ff851a5790c99cd145fb38e1ac799eb2973b4b8d1cf32c92db4771179d0b9f2" [label=""];
  "sha256:0ff851a5790c99cd145fb38e1ac799eb2973b4b8d1cf32c92db4771179d0b9f2" -> "sha256:a67bf435ef307e1b6d1efd456a9ecc4a1a567f85520d361604f7a77458353f9b" [label=""];
  "sha256:a67bf435ef307e1b6d1efd456a9ecc4a1a567f85520d361604f7a77458353f9b" -> "sha256:5e7ccb8bf2e12ddbf76a086217f29b0abe459d02d9585cc3114b4b7e143edc31" [label=""];
  "sha256:4ba125424aba18cd648dc747bda77a1971075b535670ebb12f01603ff80112e1" -> "sha256:5e7ccb8bf2e12ddbf76a086217f29b0abe459d02d9585cc3114b4b7e143edc31" [label=""];
  "sha256:5e7ccb8bf2e12ddbf76a086217f29b0abe459d02d9585cc3114b4b7e143edc31" -> "sha256:ce774bac439358fe453d5499430096b03c7d926ed16dde570f589089c45ec118" [label=""];
  "sha256:ce774bac439358fe453d5499430096b03c7d926ed16dde570f589089c45ec118" -> "sha256:4fce2d3e13bdb240d551c22c038907cabcdb5f5bf5e1709d990e7566cf7a9d94" [label=""];
  "sha256:4fce2d3e13bdb240d551c22c038907cabcdb5f5bf5e1709d990e7566cf7a9d94" -> "sha256:58c1cd5846bf65269c79a0226dcb27b36e92047503f0cd4aa1021eb450970a14" [label=""];
}

