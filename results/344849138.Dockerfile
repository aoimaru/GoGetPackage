[app/sources/344849138.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:fd6da280d19eb6ba33c1675d699824bd9c06c308439bb4d2b7ccde3417c35f45" [label="mkdir{path=/root}" shape="note"];
  "sha256:35c8167f627bfe0f10597ceb52cf2661bbc01971c53586b60cc11ce26fbda8b3" [label="local://context" shape="ellipse"];
  "sha256:55be107f054dcb77f4826e6c37edaa310682717a43a2c7d7baf34b915f3eae55" [label="copy{src=/dist/*.whl, dest=/root/}" shape="note"];
  "sha256:f2b0ed6429eabe178da090a2ad74b9164da6c0dfc450a5ba7541e670d9d5f935" [label="copy{src=/dist/requirements.txt, dest=/root/}" shape="note"];
  "sha256:ae9ecb7a9ad8a47a8e092a98ed04567c9c44b574a06f0ec73763c6717284b5c9" [label="/bin/sh -c echo \"deb http://ftp.us.debian.org/debian unstable main contrib non-free\" >> /etc/apt/sources.list.d/unstable.list &&    apt-get update && apt-get install -y libc6 &&     pip install --no-cache-dir -r /root/requirements.txt &&     rm /root/requirements.txt &&     pip install --no-cache-dir /root/*.whl &&     rm /root/*.whl" shape="box"];
  "sha256:fa33af5ca4eb25727c363940ad33fb1e0c48b967c62c4624472eacc81afcf328" [label="sha256:fa33af5ca4eb25727c363940ad33fb1e0c48b967c62c4624472eacc81afcf328" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:fd6da280d19eb6ba33c1675d699824bd9c06c308439bb4d2b7ccde3417c35f45" [label=""];
  "sha256:fd6da280d19eb6ba33c1675d699824bd9c06c308439bb4d2b7ccde3417c35f45" -> "sha256:55be107f054dcb77f4826e6c37edaa310682717a43a2c7d7baf34b915f3eae55" [label=""];
  "sha256:35c8167f627bfe0f10597ceb52cf2661bbc01971c53586b60cc11ce26fbda8b3" -> "sha256:55be107f054dcb77f4826e6c37edaa310682717a43a2c7d7baf34b915f3eae55" [label=""];
  "sha256:55be107f054dcb77f4826e6c37edaa310682717a43a2c7d7baf34b915f3eae55" -> "sha256:f2b0ed6429eabe178da090a2ad74b9164da6c0dfc450a5ba7541e670d9d5f935" [label=""];
  "sha256:35c8167f627bfe0f10597ceb52cf2661bbc01971c53586b60cc11ce26fbda8b3" -> "sha256:f2b0ed6429eabe178da090a2ad74b9164da6c0dfc450a5ba7541e670d9d5f935" [label=""];
  "sha256:f2b0ed6429eabe178da090a2ad74b9164da6c0dfc450a5ba7541e670d9d5f935" -> "sha256:ae9ecb7a9ad8a47a8e092a98ed04567c9c44b574a06f0ec73763c6717284b5c9" [label=""];
  "sha256:ae9ecb7a9ad8a47a8e092a98ed04567c9c44b574a06f0ec73763c6717284b5c9" -> "sha256:fa33af5ca4eb25727c363940ad33fb1e0c48b967c62c4624472eacc81afcf328" [label=""];
}

