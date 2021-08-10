[app/sources/393796955.Dockerfile]
digraph {
  "sha256:f33de9fad8b3aad18a19cfbf56b249b602736388358db82dd8bbe1de5bbcbf55" [label="docker-image://docker.io/debian/eol:wheezy-slim@sha256:99eb1c086c149d873da87848363f1c45ba956751f7bc7e431f7712417e0e8ae9" shape="ellipse"];
  "sha256:a2039c6616823face63a28f853e575679fffada309a7dbc694438902427e9e70" [label="/bin/sh -c apt-get update && apt-get install -y --no-install-recommends \t\tca-certificates \t\twget \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:7e80f01d3be65524bac049552a50a8d00bbb4e8813aad36da0659e0ec751bee8" [label="/bin/sh -c mkdir -p /usr/share/man/man1 \t&& apt-get update && apt-get install -y --no-install-recommends \t\topenjdk-6-jre \t&& rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:51bda52431cd155da5f747802e4644048732fd89fc1498c46fda273ce130d817" [label="/bin/sh -c wget -O \"$HOME/setup.sh\" https://indexing.familysearch.org/downloads/Indexing_unix.sh" shape="box"];
  "sha256:d0f993b91505b29350d2cfbd8a2bedcac43a5223493aaf74cb2f3a579468a124" [label="/bin/sh -c echo 'o\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn\\nn' | sh $HOME/setup.sh" shape="box"];
  "sha256:c364dd1afebb3d35339a73b0c170dae4cb019db8508c573f00ce9f9b339b1369" [label="sha256:c364dd1afebb3d35339a73b0c170dae4cb019db8508c573f00ce9f9b339b1369" shape="plaintext"];
  "sha256:f33de9fad8b3aad18a19cfbf56b249b602736388358db82dd8bbe1de5bbcbf55" -> "sha256:a2039c6616823face63a28f853e575679fffada309a7dbc694438902427e9e70" [label=""];
  "sha256:a2039c6616823face63a28f853e575679fffada309a7dbc694438902427e9e70" -> "sha256:7e80f01d3be65524bac049552a50a8d00bbb4e8813aad36da0659e0ec751bee8" [label=""];
  "sha256:7e80f01d3be65524bac049552a50a8d00bbb4e8813aad36da0659e0ec751bee8" -> "sha256:51bda52431cd155da5f747802e4644048732fd89fc1498c46fda273ce130d817" [label=""];
  "sha256:51bda52431cd155da5f747802e4644048732fd89fc1498c46fda273ce130d817" -> "sha256:d0f993b91505b29350d2cfbd8a2bedcac43a5223493aaf74cb2f3a579468a124" [label=""];
  "sha256:d0f993b91505b29350d2cfbd8a2bedcac43a5223493aaf74cb2f3a579468a124" -> "sha256:c364dd1afebb3d35339a73b0c170dae4cb019db8508c573f00ce9f9b339b1369" [label=""];
}

