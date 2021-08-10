[app/sources/211497272.Dockerfile]
digraph {
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" [label="docker-image://docker.io/gliderlabs/alpine:3.3" shape="ellipse"];
  "sha256:1bc9bd62054191d052f6c304b1bf2aaa7c4306dbf347093e89ad3e66726c2fc7" [label="/bin/sh -c apk-install bash py-pip firefox xvfb dbus chromium-chromedriver &&     pip install --upgrade pip &&     pip install robotframework robotframework-selenium2library selenium robotframework-xvfb &&     python --version" shape="box"];
  "sha256:70c5d0fe469782bad2e82435b97ebe3221eae6920a6764ef0a84951f0da447db" [label="local://context" shape="ellipse"];
  "sha256:dbf50fd1b8dc93f58330f2a281c868631b0e749f2156d0c7da7cec5d20299b85" [label="copy{src=/run.sh, dest=/usr/local/bin/run.sh}" shape="note"];
  "sha256:644f12954ac8afcc6ed9a023da41a9246d20716065dd2157260a99eb68f34c54" [label="/bin/sh -c chmod +x /usr/local/bin/run.sh" shape="box"];
  "sha256:1eeed880ef2fde0b09c34a737041902ce1549e8936bfe4e88b475797ffb16254" [label="sha256:1eeed880ef2fde0b09c34a737041902ce1549e8936bfe4e88b475797ffb16254" shape="plaintext"];
  "sha256:3cb9dfca7ad1b24c47f3f967548fc8b1e17476690e0f576dda52a217216115fa" -> "sha256:1bc9bd62054191d052f6c304b1bf2aaa7c4306dbf347093e89ad3e66726c2fc7" [label=""];
  "sha256:1bc9bd62054191d052f6c304b1bf2aaa7c4306dbf347093e89ad3e66726c2fc7" -> "sha256:dbf50fd1b8dc93f58330f2a281c868631b0e749f2156d0c7da7cec5d20299b85" [label=""];
  "sha256:70c5d0fe469782bad2e82435b97ebe3221eae6920a6764ef0a84951f0da447db" -> "sha256:dbf50fd1b8dc93f58330f2a281c868631b0e749f2156d0c7da7cec5d20299b85" [label=""];
  "sha256:dbf50fd1b8dc93f58330f2a281c868631b0e749f2156d0c7da7cec5d20299b85" -> "sha256:644f12954ac8afcc6ed9a023da41a9246d20716065dd2157260a99eb68f34c54" [label=""];
  "sha256:644f12954ac8afcc6ed9a023da41a9246d20716065dd2157260a99eb68f34c54" -> "sha256:1eeed880ef2fde0b09c34a737041902ce1549e8936bfe4e88b475797ffb16254" [label=""];
}

