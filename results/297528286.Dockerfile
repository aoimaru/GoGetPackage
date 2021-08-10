[app/sources/297528286.Dockerfile]
digraph {
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" [label="docker-image://docker.io/library/python:3.6-alpine" shape="ellipse"];
  "sha256:a084ffaf5d5376369878957f97be78b0569129b3d69f0636176c04ad70b069f8" [label="/bin/sh -c apk --no-cache add curl" shape="box"];
  "sha256:6ca19b1d8168048e22550d753c84a0b65586439ce27de18d47a6ed3c6ab72dbf" [label="/bin/sh -c apk --no-cache --update-cache add gcc python python-dev py-pip build-base wget" shape="box"];
  "sha256:e94c6d6cc00db4fe28e0cb147a1849c5cf69ca0bb4c6bc0d830a8c4ada32e27b" [label="/bin/sh -c ln -s /usr/include/locale.h /usr/include/xlocale.h" shape="box"];
  "sha256:f4494426a1c0682d9b912afacd3f749448a117ce667e68ade13b4f075f6e5d4a" [label="/bin/sh -c pip install pipenv" shape="box"];
  "sha256:f6426cb11809bee3f7cc5425a5ef4c83bb4526e45d87ed318fad608e5ef8d5a4" [label="/bin/sh -c mkdir -p /src/ngsi-timeseries-api" shape="box"];
  "sha256:0ced36e9f31e4eaa56021e6e2f01475cbd62eff4a57502c3f732ca04edbd2b3e" [label="local://context" shape="ellipse"];
  "sha256:f7e4ce5d342594486146b83d6651e076152058750b0120dc65750b789e41a189" [label="copy{src=/Pipfile, dest=/src/ngsi-timeseries-api/Pipfile}" shape="note"];
  "sha256:802e04ea7c0b2b24210f4da8411867d6cde20164d299dcdef6b8e3849c3d536d" [label="copy{src=/Pipfile.lock, dest=/src/ngsi-timeseries-api/Pipfile.lock}" shape="note"];
  "sha256:c63b540167a46297984e78927ca9a7ef6570c2c963efef23587ba58e61bd961f" [label="/bin/sh -c mkdir /install" shape="box"];
  "sha256:18000428393a2257c84669d582ca311c8a6a67a284bcd126e73c9cfd61de1eb6" [label="mkdir{path=/install}" shape="note"];
  "sha256:965e93487b1a269c2399c8a1b30bddd3a4b0860f1465168b3522827c669a01a0" [label="/bin/sh -c cd /src/ngsi-timeseries-api && { pipenv lock -r > /requirements.txt; }" shape="box"];
  "sha256:ff08d5d8affa3a20f7f3aae8f0eaa8ba4a81e3c068447f9f39a99a9b297baad1" [label="/bin/sh -c pip install --install-option=\"--prefix=/install\" -r /requirements.txt" shape="box"];
  "sha256:d42899fe87a9702bad7064e8eba3962f4eb6bb922bb76ccec901778fd95abce0" [label="copy{src=/install, dest=/usr/local}" shape="note"];
  "sha256:30a4b696c132d5dd80e292f7c61af758f724ad60818498e2ce359cb14fe056e8" [label="copy{src=/, dest=/src/ngsi-timeseries-api/}" shape="note"];
  "sha256:9777fcbe49681c26e5f081527f3818e289c531f31b508bad0e1d590946c22376" [label="mkdir{path=/src/ngsi-timeseries-api/src}" shape="note"];
  "sha256:2829d7f385bf70e2e2fddca81bfeb18afb25f7fb07b2e57292c67b6e5eeeff4a" [label="sha256:2829d7f385bf70e2e2fddca81bfeb18afb25f7fb07b2e57292c67b6e5eeeff4a" shape="plaintext"];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:a084ffaf5d5376369878957f97be78b0569129b3d69f0636176c04ad70b069f8" [label=""];
  "sha256:0c9a51599062e5153a0967e70fe6faa40dfe1d6100e2bb198db5f4474bee4355" -> "sha256:6ca19b1d8168048e22550d753c84a0b65586439ce27de18d47a6ed3c6ab72dbf" [label=""];
  "sha256:6ca19b1d8168048e22550d753c84a0b65586439ce27de18d47a6ed3c6ab72dbf" -> "sha256:e94c6d6cc00db4fe28e0cb147a1849c5cf69ca0bb4c6bc0d830a8c4ada32e27b" [label=""];
  "sha256:e94c6d6cc00db4fe28e0cb147a1849c5cf69ca0bb4c6bc0d830a8c4ada32e27b" -> "sha256:f4494426a1c0682d9b912afacd3f749448a117ce667e68ade13b4f075f6e5d4a" [label=""];
  "sha256:f4494426a1c0682d9b912afacd3f749448a117ce667e68ade13b4f075f6e5d4a" -> "sha256:f6426cb11809bee3f7cc5425a5ef4c83bb4526e45d87ed318fad608e5ef8d5a4" [label=""];
  "sha256:f6426cb11809bee3f7cc5425a5ef4c83bb4526e45d87ed318fad608e5ef8d5a4" -> "sha256:f7e4ce5d342594486146b83d6651e076152058750b0120dc65750b789e41a189" [label=""];
  "sha256:0ced36e9f31e4eaa56021e6e2f01475cbd62eff4a57502c3f732ca04edbd2b3e" -> "sha256:f7e4ce5d342594486146b83d6651e076152058750b0120dc65750b789e41a189" [label=""];
  "sha256:f7e4ce5d342594486146b83d6651e076152058750b0120dc65750b789e41a189" -> "sha256:802e04ea7c0b2b24210f4da8411867d6cde20164d299dcdef6b8e3849c3d536d" [label=""];
  "sha256:0ced36e9f31e4eaa56021e6e2f01475cbd62eff4a57502c3f732ca04edbd2b3e" -> "sha256:802e04ea7c0b2b24210f4da8411867d6cde20164d299dcdef6b8e3849c3d536d" [label=""];
  "sha256:802e04ea7c0b2b24210f4da8411867d6cde20164d299dcdef6b8e3849c3d536d" -> "sha256:c63b540167a46297984e78927ca9a7ef6570c2c963efef23587ba58e61bd961f" [label=""];
  "sha256:c63b540167a46297984e78927ca9a7ef6570c2c963efef23587ba58e61bd961f" -> "sha256:18000428393a2257c84669d582ca311c8a6a67a284bcd126e73c9cfd61de1eb6" [label=""];
  "sha256:18000428393a2257c84669d582ca311c8a6a67a284bcd126e73c9cfd61de1eb6" -> "sha256:965e93487b1a269c2399c8a1b30bddd3a4b0860f1465168b3522827c669a01a0" [label=""];
  "sha256:965e93487b1a269c2399c8a1b30bddd3a4b0860f1465168b3522827c669a01a0" -> "sha256:ff08d5d8affa3a20f7f3aae8f0eaa8ba4a81e3c068447f9f39a99a9b297baad1" [label=""];
  "sha256:a084ffaf5d5376369878957f97be78b0569129b3d69f0636176c04ad70b069f8" -> "sha256:d42899fe87a9702bad7064e8eba3962f4eb6bb922bb76ccec901778fd95abce0" [label=""];
  "sha256:ff08d5d8affa3a20f7f3aae8f0eaa8ba4a81e3c068447f9f39a99a9b297baad1" -> "sha256:d42899fe87a9702bad7064e8eba3962f4eb6bb922bb76ccec901778fd95abce0" [label=""];
  "sha256:d42899fe87a9702bad7064e8eba3962f4eb6bb922bb76ccec901778fd95abce0" -> "sha256:30a4b696c132d5dd80e292f7c61af758f724ad60818498e2ce359cb14fe056e8" [label=""];
  "sha256:0ced36e9f31e4eaa56021e6e2f01475cbd62eff4a57502c3f732ca04edbd2b3e" -> "sha256:30a4b696c132d5dd80e292f7c61af758f724ad60818498e2ce359cb14fe056e8" [label=""];
  "sha256:30a4b696c132d5dd80e292f7c61af758f724ad60818498e2ce359cb14fe056e8" -> "sha256:9777fcbe49681c26e5f081527f3818e289c531f31b508bad0e1d590946c22376" [label=""];
  "sha256:9777fcbe49681c26e5f081527f3818e289c531f31b508bad0e1d590946c22376" -> "sha256:2829d7f385bf70e2e2fddca81bfeb18afb25f7fb07b2e57292c67b6e5eeeff4a" [label=""];
}

