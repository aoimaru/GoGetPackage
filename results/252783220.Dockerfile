[app/sources/252783220.Dockerfile]
digraph {
  "sha256:0b55e9d9e3a9ee304c2dc4ecdf576fd49e545d20206c46c18eac5eed4c2de4ee" [label="docker-image://docker.io/dclong/python:latest" shape="ellipse"];
  "sha256:15fb6da38b6b8b8ad361f0216f5371ccfd35cee8d870d4381778aef2816cc8aa" [label="/bin/sh -c apt-get update -y && apt-get install -y qt5-default libqt5webkit5-dev build-essential xvfb && apt-get autoremove && apt-get autoclean" shape="box"];
  "sha256:d7a5ec3e14f014243ad4f9de8f0cc2fe6e761073ffb98bc4a1eb61dca31db455" [label="/bin/sh -c pip3 install dryscrape" shape="box"];
  "sha256:4569f94f54a6d82a7909f1e2986a4556390bf66ea50bc8279c6185412863f51c" [label="local://context" shape="ellipse"];
  "sha256:af5fb84ba6e67148c09f0703d045d25a7eccea541e1db6f51b6e257e091b895c" [label="copy{src=/scripts, dest=/scripts}" shape="note"];
  "sha256:aa156c1a0c2b3ebaf63896c407d1f53f101c3a9bab5eba570f83db515ea3cf5b" [label="sha256:aa156c1a0c2b3ebaf63896c407d1f53f101c3a9bab5eba570f83db515ea3cf5b" shape="plaintext"];
  "sha256:0b55e9d9e3a9ee304c2dc4ecdf576fd49e545d20206c46c18eac5eed4c2de4ee" -> "sha256:15fb6da38b6b8b8ad361f0216f5371ccfd35cee8d870d4381778aef2816cc8aa" [label=""];
  "sha256:15fb6da38b6b8b8ad361f0216f5371ccfd35cee8d870d4381778aef2816cc8aa" -> "sha256:d7a5ec3e14f014243ad4f9de8f0cc2fe6e761073ffb98bc4a1eb61dca31db455" [label=""];
  "sha256:d7a5ec3e14f014243ad4f9de8f0cc2fe6e761073ffb98bc4a1eb61dca31db455" -> "sha256:af5fb84ba6e67148c09f0703d045d25a7eccea541e1db6f51b6e257e091b895c" [label=""];
  "sha256:4569f94f54a6d82a7909f1e2986a4556390bf66ea50bc8279c6185412863f51c" -> "sha256:af5fb84ba6e67148c09f0703d045d25a7eccea541e1db6f51b6e257e091b895c" [label=""];
  "sha256:af5fb84ba6e67148c09f0703d045d25a7eccea541e1db6f51b6e257e091b895c" -> "sha256:aa156c1a0c2b3ebaf63896c407d1f53f101c3a9bab5eba570f83db515ea3cf5b" [label=""];
}

