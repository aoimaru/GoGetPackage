[app/sources/192476048.Dockerfile]
digraph {
  "sha256:40c5d4db12cf77a216545876de2a07d4d760869fed3e767b85c252bde79aadda" [label="local://context" shape="ellipse"];
  "sha256:d9d46d472430aedf57a6d2ba9ccecfe98dfad81f52f5e6a7441a387dfa36af2c" [label="copy{src=/engine, dest=/engine}" shape="note"];
  "sha256:dc5d8a0c8732f4e0b78c879f6c407006e9fac564915d3b23469d86e6b53c74a6" [label="sha256:dc5d8a0c8732f4e0b78c879f6c407006e9fac564915d3b23469d86e6b53c74a6" shape="plaintext"];
  "sha256:40c5d4db12cf77a216545876de2a07d4d760869fed3e767b85c252bde79aadda" -> "sha256:d9d46d472430aedf57a6d2ba9ccecfe98dfad81f52f5e6a7441a387dfa36af2c" [label=""];
  "sha256:d9d46d472430aedf57a6d2ba9ccecfe98dfad81f52f5e6a7441a387dfa36af2c" -> "sha256:dc5d8a0c8732f4e0b78c879f6c407006e9fac564915d3b23469d86e6b53c74a6" [label=""];
}

