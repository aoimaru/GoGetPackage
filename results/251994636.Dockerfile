[app/sources/251994636.Dockerfile]
digraph {
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" [label="docker-image://docker.io/library/python:2.7-slim" shape="ellipse"];
  "sha256:66f6413f7cb6997c99f839567b2034ea6f95663e44321a5d8b6142fbe6e3881a" [label="/bin/sh -c apt-get update   && apt-get install -qq -y --no-install-recommends build-essential sudo git wget curl nmap ruby   && apt-get clean" shape="box"];
  "sha256:fc347f924207ef4b6b7fcaa9f9a7c00378124dbd67996da8d6434ec17e73b6da" [label="/bin/sh -c pip install requests" shape="box"];
  "sha256:22bec7b1d0e386c4e992578acec38fcc1c3462af70da17cfdc0ad01914c931ee" [label="/bin/sh -c git clone https://github.com/Manisso/fsociety.git   && cd fsociety   && chmod +x install.sh   && ./install.sh" shape="box"];
  "sha256:19c2045ce345e8aeab15326c4b323f0712352893e062ad91965af7fa9f656ff7" [label="mkdir{path=/root/.fsociety}" shape="note"];
  "sha256:6618c160a65036374e8484b76a337fee701d06b70dfe1890ee7b695d31647fbd" [label="sha256:6618c160a65036374e8484b76a337fee701d06b70dfe1890ee7b695d31647fbd" shape="plaintext"];
  "sha256:73079b2eb57010ad8f653e512710f56fbcef68c723ed1a98218de392a8b40b38" -> "sha256:66f6413f7cb6997c99f839567b2034ea6f95663e44321a5d8b6142fbe6e3881a" [label=""];
  "sha256:66f6413f7cb6997c99f839567b2034ea6f95663e44321a5d8b6142fbe6e3881a" -> "sha256:fc347f924207ef4b6b7fcaa9f9a7c00378124dbd67996da8d6434ec17e73b6da" [label=""];
  "sha256:fc347f924207ef4b6b7fcaa9f9a7c00378124dbd67996da8d6434ec17e73b6da" -> "sha256:22bec7b1d0e386c4e992578acec38fcc1c3462af70da17cfdc0ad01914c931ee" [label=""];
  "sha256:22bec7b1d0e386c4e992578acec38fcc1c3462af70da17cfdc0ad01914c931ee" -> "sha256:19c2045ce345e8aeab15326c4b323f0712352893e062ad91965af7fa9f656ff7" [label=""];
  "sha256:19c2045ce345e8aeab15326c4b323f0712352893e062ad91965af7fa9f656ff7" -> "sha256:6618c160a65036374e8484b76a337fee701d06b70dfe1890ee7b695d31647fbd" [label=""];
}

