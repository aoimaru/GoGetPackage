[app/sources/477608610.Dockerfile]
digraph {
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" [label="docker-image://docker.io/phusion/baseimage:0.9.21" shape="ellipse"];
  "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip git python-pip python" shape="box"];
  "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" [label="/bin/sh -c pip3 install anymarkup" shape="box"];
  "sha256:2ebf62806515130e7e0f4e4fab9845aac170b5a85b32a24c51138d0ebf06a7d9" [label="local://context" shape="ellipse"];
  "sha256:a2b714575a08ff0624cb0269a7979040b81e8eceedec27f0f127fe3cd4efe35d" [label="copy{src=/bootstrap.py, dest=/usr/local/bin/bootstrap.py}" shape="note"];
  "sha256:efa5e4844b5bb4a5854f496feb582fe4375c2a10a354bb422e8b007573abc052" [label="mkdir{path=/tmp}" shape="note"];
  "sha256:6ed11b30f369e3a7e93d4da1a8a40e4f8c05e35cf873a4fbbf2cad08ae7aedf1" [label="sha256:6ed11b30f369e3a7e93d4da1a8a40e4f8c05e35cf873a4fbbf2cad08ae7aedf1" shape="plaintext"];
  "sha256:04d140500fd47fcc99a14e6f61313fb600d1f40bf9c93dd0380221baa6017b45" -> "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" [label=""];
  "sha256:03fd9dd71a53e42dc149fca4a71c0b6c1c4e4fb2f0ee18247270102259a89787" -> "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" [label=""];
  "sha256:981f75e8478d8aefc994a788bea86bbda2429130a14275e4a76ce6349a7a1970" -> "sha256:a2b714575a08ff0624cb0269a7979040b81e8eceedec27f0f127fe3cd4efe35d" [label=""];
  "sha256:2ebf62806515130e7e0f4e4fab9845aac170b5a85b32a24c51138d0ebf06a7d9" -> "sha256:a2b714575a08ff0624cb0269a7979040b81e8eceedec27f0f127fe3cd4efe35d" [label=""];
  "sha256:a2b714575a08ff0624cb0269a7979040b81e8eceedec27f0f127fe3cd4efe35d" -> "sha256:efa5e4844b5bb4a5854f496feb582fe4375c2a10a354bb422e8b007573abc052" [label=""];
  "sha256:efa5e4844b5bb4a5854f496feb582fe4375c2a10a354bb422e8b007573abc052" -> "sha256:6ed11b30f369e3a7e93d4da1a8a40e4f8c05e35cf873a4fbbf2cad08ae7aedf1" [label=""];
}

