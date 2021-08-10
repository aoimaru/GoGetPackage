[app/sources/339079687.Dockerfile]
digraph {
  "sha256:beb9a1065fe62040df9465c45a32989ae8774afa78dfcee94ad25e8bca853020" [label="docker-image://docker.io/tatsushid/tinycore-python:2.7" shape="ellipse"];
  "sha256:4f92e584c61623b60eb395bf9b4cad5c803f55acf951ed5bc1982194e028bd5c" [label="mkdir{path=/home/weave}" shape="note"];
  "sha256:669208bc4a6e33f2e1dbb25ea8c492452a4dbf5433ca84952856019ae0bb86f5" [label="local://context" shape="ellipse"];
  "sha256:f34e8a51d9bdea0b6fb1bae7c8eed479cb5fa3d8cff66614d984eeb872933cf1" [label="copy{src=/requirements.txt, dest=/home/weave/}" shape="note"];
  "sha256:675a3d0f8918512d9ede3db7e44b94ca2a244dff652d8b17dfb1640c0949c783" [label="/bin/sh -c pip install -r /home/weave/requirements.txt" shape="box"];
  "sha256:722d71e6a6042054ff5bcaa33c341c22d4c32d4aeff1f845f2136daa979d7fe8" [label="copy{src=/client.py, dest=/home/weave/}" shape="note"];
  "sha256:49871c11c3d578fc73472b296d617c199a06b66f7ebf95539f65265449aa0a1c" [label="sha256:49871c11c3d578fc73472b296d617c199a06b66f7ebf95539f65265449aa0a1c" shape="plaintext"];
  "sha256:beb9a1065fe62040df9465c45a32989ae8774afa78dfcee94ad25e8bca853020" -> "sha256:4f92e584c61623b60eb395bf9b4cad5c803f55acf951ed5bc1982194e028bd5c" [label=""];
  "sha256:4f92e584c61623b60eb395bf9b4cad5c803f55acf951ed5bc1982194e028bd5c" -> "sha256:f34e8a51d9bdea0b6fb1bae7c8eed479cb5fa3d8cff66614d984eeb872933cf1" [label=""];
  "sha256:669208bc4a6e33f2e1dbb25ea8c492452a4dbf5433ca84952856019ae0bb86f5" -> "sha256:f34e8a51d9bdea0b6fb1bae7c8eed479cb5fa3d8cff66614d984eeb872933cf1" [label=""];
  "sha256:f34e8a51d9bdea0b6fb1bae7c8eed479cb5fa3d8cff66614d984eeb872933cf1" -> "sha256:675a3d0f8918512d9ede3db7e44b94ca2a244dff652d8b17dfb1640c0949c783" [label=""];
  "sha256:675a3d0f8918512d9ede3db7e44b94ca2a244dff652d8b17dfb1640c0949c783" -> "sha256:722d71e6a6042054ff5bcaa33c341c22d4c32d4aeff1f845f2136daa979d7fe8" [label=""];
  "sha256:669208bc4a6e33f2e1dbb25ea8c492452a4dbf5433ca84952856019ae0bb86f5" -> "sha256:722d71e6a6042054ff5bcaa33c341c22d4c32d4aeff1f845f2136daa979d7fe8" [label=""];
  "sha256:722d71e6a6042054ff5bcaa33c341c22d4c32d4aeff1f845f2136daa979d7fe8" -> "sha256:49871c11c3d578fc73472b296d617c199a06b66f7ebf95539f65265449aa0a1c" [label=""];
}

