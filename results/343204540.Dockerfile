[app/sources/343204540.Dockerfile]
digraph {
  "sha256:efc9a67806b04553b9cfb7e9ef69b9b10ff45969d89c6c1b86fdcb00108ef53d" [label="docker-image://docker.io/library/python:3.7-slim-stretch" shape="ellipse"];
  "sha256:59c81c6f9c6b70e2a0e7f78f9d368a7bbb166118d3e131ecb64b098ba41570e8" [label="mkdir{path=/app}" shape="note"];
  "sha256:d163c9562df2f57ed2157c41ca24e9d890c9eb5c97d6d1d70b4f310aefc9a232" [label="local://context" shape="ellipse"];
  "sha256:abe353b47798f0bf87b77a3cd51f757a1a3df238c60a4954324db7a39d41ab31" [label="copy{src=/requirements.txt, dest=/app/}" shape="note"];
  "sha256:bffb0f0553d1bb0b0a8dfaf554261a59e373c4b7bad0b9cc5937cce11baf911f" [label="/bin/sh -c build_deps='gcc libc6-dev make' &&     apt-get update &&     apt-get install -y --no-install-recommends git ${build_deps} &&     pip install -r requirements.txt &&     apt-get purge -y --auto-remove ${build_deps} &&     rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:1f5bccea65a477ca93946fd58ed40b2c1d20d810348fe948cec961f53f9e23da" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:6a6e67d3b82e8a07f5aa67e91fff80a0148ba1ac04f76f0cb094e16678af02d6" [label="/bin/sh -c python setup.py install" shape="box"];
  "sha256:564f2b127a627234b034b184b127252a08b6871f4103c120cc5faee676e02581" [label="sha256:564f2b127a627234b034b184b127252a08b6871f4103c120cc5faee676e02581" shape="plaintext"];
  "sha256:efc9a67806b04553b9cfb7e9ef69b9b10ff45969d89c6c1b86fdcb00108ef53d" -> "sha256:59c81c6f9c6b70e2a0e7f78f9d368a7bbb166118d3e131ecb64b098ba41570e8" [label=""];
  "sha256:59c81c6f9c6b70e2a0e7f78f9d368a7bbb166118d3e131ecb64b098ba41570e8" -> "sha256:abe353b47798f0bf87b77a3cd51f757a1a3df238c60a4954324db7a39d41ab31" [label=""];
  "sha256:d163c9562df2f57ed2157c41ca24e9d890c9eb5c97d6d1d70b4f310aefc9a232" -> "sha256:abe353b47798f0bf87b77a3cd51f757a1a3df238c60a4954324db7a39d41ab31" [label=""];
  "sha256:abe353b47798f0bf87b77a3cd51f757a1a3df238c60a4954324db7a39d41ab31" -> "sha256:bffb0f0553d1bb0b0a8dfaf554261a59e373c4b7bad0b9cc5937cce11baf911f" [label=""];
  "sha256:bffb0f0553d1bb0b0a8dfaf554261a59e373c4b7bad0b9cc5937cce11baf911f" -> "sha256:1f5bccea65a477ca93946fd58ed40b2c1d20d810348fe948cec961f53f9e23da" [label=""];
  "sha256:d163c9562df2f57ed2157c41ca24e9d890c9eb5c97d6d1d70b4f310aefc9a232" -> "sha256:1f5bccea65a477ca93946fd58ed40b2c1d20d810348fe948cec961f53f9e23da" [label=""];
  "sha256:1f5bccea65a477ca93946fd58ed40b2c1d20d810348fe948cec961f53f9e23da" -> "sha256:6a6e67d3b82e8a07f5aa67e91fff80a0148ba1ac04f76f0cb094e16678af02d6" [label=""];
  "sha256:6a6e67d3b82e8a07f5aa67e91fff80a0148ba1ac04f76f0cb094e16678af02d6" -> "sha256:564f2b127a627234b034b184b127252a08b6871f4103c120cc5faee676e02581" [label=""];
}

