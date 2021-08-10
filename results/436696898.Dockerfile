[app/sources/436696898.Dockerfile]
digraph {
  "sha256:4fc574a9087e048695a980675f8c91c4c5b778b5c3b436893c173badf7fd825f" [label="docker-image://docker.io/paulinus/opensfm-docker-base:python3" shape="ellipse"];
  "sha256:c951045c8c9cc6c6a705c98c02f5ac2a5bb77a0ec6807aba9e7e584e290558ed" [label="local://context" shape="ellipse"];
  "sha256:997237ce65c530ee39e360c1042506aaa7dab67967e52f0bc8fe6104f22d004a" [label="copy{src=/, dest=/source/OpenSfM}" shape="note"];
  "sha256:f44b494bf419d658e7a8d1b761189baf4b535b3926f5bf4cf5085f33b29743e0" [label="mkdir{path=/source/OpenSfM}" shape="note"];
  "sha256:5ab043d203e7ade985191c2f8d7f7d7c6f54c88ce3013824c30ce2a4a83a05f3" [label="/bin/sh -c pip3 install -r requirements.txt &&     python3 setup.py build" shape="box"];
  "sha256:67972b8b83c8da234b8d74125c8481337b06ade77c70e52d87ad30d500c483cb" [label="sha256:67972b8b83c8da234b8d74125c8481337b06ade77c70e52d87ad30d500c483cb" shape="plaintext"];
  "sha256:4fc574a9087e048695a980675f8c91c4c5b778b5c3b436893c173badf7fd825f" -> "sha256:997237ce65c530ee39e360c1042506aaa7dab67967e52f0bc8fe6104f22d004a" [label=""];
  "sha256:c951045c8c9cc6c6a705c98c02f5ac2a5bb77a0ec6807aba9e7e584e290558ed" -> "sha256:997237ce65c530ee39e360c1042506aaa7dab67967e52f0bc8fe6104f22d004a" [label=""];
  "sha256:997237ce65c530ee39e360c1042506aaa7dab67967e52f0bc8fe6104f22d004a" -> "sha256:f44b494bf419d658e7a8d1b761189baf4b535b3926f5bf4cf5085f33b29743e0" [label=""];
  "sha256:f44b494bf419d658e7a8d1b761189baf4b535b3926f5bf4cf5085f33b29743e0" -> "sha256:5ab043d203e7ade985191c2f8d7f7d7c6f54c88ce3013824c30ce2a4a83a05f3" [label=""];
  "sha256:5ab043d203e7ade985191c2f8d7f7d7c6f54c88ce3013824c30ce2a4a83a05f3" -> "sha256:67972b8b83c8da234b8d74125c8481337b06ade77c70e52d87ad30d500c483cb" [label=""];
}

