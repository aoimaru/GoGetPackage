[app/sources/263402035.Dockerfile]
digraph {
  "sha256:64345aa2fcac6b83dcbfd4a2ce3ebea3a681bdec790aa120918b7645b2674fe0" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:1c86f7250bb5138c263d38ebd77bc02331d14fbfde18e83409d96835e6fe6ddd" [label="copy{src=/setup.sh, dest=/home/}" shape="note"];
  "sha256:a8ff8225b2c3c8eb71b27c851e54bb4e570ec5840e3a7ccdd4acf64aff5ed435" [label="/bin/sh -c mkdir -p /home/audio_labeler/" shape="box"];
  "sha256:441e752c8547a7122579c1a375e53593f0372a4c45fef121ba88cdbfb7c5c2a6" [label="/bin/sh -c apt-get update && apt-get install -y software-properties-common build-essential python-dev python-pip wget git python-numpy-dev python-numpy python-yaml python-pygame gunicorn && python -m pip install -U pip && pip install -U setuptools Flask Jinja2 unicodecsv numpy pandas moviepy pydub" shape="box"];
  "sha256:6541f5e4a8465e025c24c2e1b12d9c490920c35043332e36627c254e61a6b961" [label="/bin/sh -c add-apt-repository -y ppa:mc3man/trusty-media  && apt-get update -y  && apt-get install -y ffmpeg gstreamer0.10-ffmpeg" shape="box"];
  "sha256:06b470221bc7ee6815ddcfcb6713eedd75020497d856141f7d967581581ae095" [label="copy{src=/wsgi.py, dest=/home/audio_labeler/}" shape="note"];
  "sha256:0d9993e7a807034345ac437410ae24ef7ed1612606f8356e546f77400da4f530" [label="copy{src=/app.py, dest=/home/}" shape="note"];
  "sha256:e6964eaefaa60a062be2fd372f01651932ef1bbd52e94ab8aa1e55d5d8e4dd63" [label="copy{src=/wsgi.py, dest=/home/}" shape="note"];
  "sha256:d4a87cb8e6b9330bdac8bbdbd9086d588cb971970cdb54f97438a746e1591342" [label="mkdir{path=/home/audio_labeler}" shape="note"];
  "sha256:085e5898c2dd049745d0db0580e1c8ccc32bec9cde3663afc7f2cbdc381e02b4" [label="sha256:085e5898c2dd049745d0db0580e1c8ccc32bec9cde3663afc7f2cbdc381e02b4" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:1c86f7250bb5138c263d38ebd77bc02331d14fbfde18e83409d96835e6fe6ddd" [label=""];
  "sha256:64345aa2fcac6b83dcbfd4a2ce3ebea3a681bdec790aa120918b7645b2674fe0" -> "sha256:1c86f7250bb5138c263d38ebd77bc02331d14fbfde18e83409d96835e6fe6ddd" [label=""];
  "sha256:1c86f7250bb5138c263d38ebd77bc02331d14fbfde18e83409d96835e6fe6ddd" -> "sha256:a8ff8225b2c3c8eb71b27c851e54bb4e570ec5840e3a7ccdd4acf64aff5ed435" [label=""];
  "sha256:a8ff8225b2c3c8eb71b27c851e54bb4e570ec5840e3a7ccdd4acf64aff5ed435" -> "sha256:441e752c8547a7122579c1a375e53593f0372a4c45fef121ba88cdbfb7c5c2a6" [label=""];
  "sha256:441e752c8547a7122579c1a375e53593f0372a4c45fef121ba88cdbfb7c5c2a6" -> "sha256:6541f5e4a8465e025c24c2e1b12d9c490920c35043332e36627c254e61a6b961" [label=""];
  "sha256:6541f5e4a8465e025c24c2e1b12d9c490920c35043332e36627c254e61a6b961" -> "sha256:06b470221bc7ee6815ddcfcb6713eedd75020497d856141f7d967581581ae095" [label=""];
  "sha256:64345aa2fcac6b83dcbfd4a2ce3ebea3a681bdec790aa120918b7645b2674fe0" -> "sha256:06b470221bc7ee6815ddcfcb6713eedd75020497d856141f7d967581581ae095" [label=""];
  "sha256:06b470221bc7ee6815ddcfcb6713eedd75020497d856141f7d967581581ae095" -> "sha256:0d9993e7a807034345ac437410ae24ef7ed1612606f8356e546f77400da4f530" [label=""];
  "sha256:64345aa2fcac6b83dcbfd4a2ce3ebea3a681bdec790aa120918b7645b2674fe0" -> "sha256:0d9993e7a807034345ac437410ae24ef7ed1612606f8356e546f77400da4f530" [label=""];
  "sha256:0d9993e7a807034345ac437410ae24ef7ed1612606f8356e546f77400da4f530" -> "sha256:e6964eaefaa60a062be2fd372f01651932ef1bbd52e94ab8aa1e55d5d8e4dd63" [label=""];
  "sha256:64345aa2fcac6b83dcbfd4a2ce3ebea3a681bdec790aa120918b7645b2674fe0" -> "sha256:e6964eaefaa60a062be2fd372f01651932ef1bbd52e94ab8aa1e55d5d8e4dd63" [label=""];
  "sha256:e6964eaefaa60a062be2fd372f01651932ef1bbd52e94ab8aa1e55d5d8e4dd63" -> "sha256:d4a87cb8e6b9330bdac8bbdbd9086d588cb971970cdb54f97438a746e1591342" [label=""];
  "sha256:d4a87cb8e6b9330bdac8bbdbd9086d588cb971970cdb54f97438a746e1591342" -> "sha256:085e5898c2dd049745d0db0580e1c8ccc32bec9cde3663afc7f2cbdc381e02b4" [label=""];
}

