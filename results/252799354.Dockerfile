[app/sources/252799354.Dockerfile]
digraph {
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" [label="docker-image://docker.io/library/debian:stretch-slim" shape="ellipse"];
  "sha256:52bb3fac09d4ffaa45c4c8cb475759582993b4723e72de889f8d2c06c665d43e" [label="/bin/sh -c apt-get update && apt-get install -y teeworlds-server pwgen wget && apt-get clean all" shape="box"];
  "sha256:1375281f31f5ded85af2d488864156c88d68b1b49c12677dce64bd380e27ee2a" [label="local://context" shape="ellipse"];
  "sha256:a232b74c721b7f0b63aee52181f4b3eef2381082bc7fb2a528ca51a047fe1236" [label="copy{src=/*, dest=/}" shape="note"];
  "sha256:db9a7738a5227ed15cac82c482242893807a05cdac9f5863a461f9da0c70d5dc" [label="/bin/sh -c chmod +x /run.sh /stdoutprocessor.sh" shape="box"];
  "sha256:99c9571e69ee5d8ee8efcaeca096029b055d10024322edbb3f4316380cfe529b" [label="sha256:99c9571e69ee5d8ee8efcaeca096029b055d10024322edbb3f4316380cfe529b" shape="plaintext"];
  "sha256:939b140a123def81e15a1f181240baeed32ba9aa8810faface6d333e37eed8dd" -> "sha256:52bb3fac09d4ffaa45c4c8cb475759582993b4723e72de889f8d2c06c665d43e" [label=""];
  "sha256:52bb3fac09d4ffaa45c4c8cb475759582993b4723e72de889f8d2c06c665d43e" -> "sha256:a232b74c721b7f0b63aee52181f4b3eef2381082bc7fb2a528ca51a047fe1236" [label=""];
  "sha256:1375281f31f5ded85af2d488864156c88d68b1b49c12677dce64bd380e27ee2a" -> "sha256:a232b74c721b7f0b63aee52181f4b3eef2381082bc7fb2a528ca51a047fe1236" [label=""];
  "sha256:a232b74c721b7f0b63aee52181f4b3eef2381082bc7fb2a528ca51a047fe1236" -> "sha256:db9a7738a5227ed15cac82c482242893807a05cdac9f5863a461f9da0c70d5dc" [label=""];
  "sha256:db9a7738a5227ed15cac82c482242893807a05cdac9f5863a461f9da0c70d5dc" -> "sha256:99c9571e69ee5d8ee8efcaeca096029b055d10024322edbb3f4316380cfe529b" [label=""];
}

