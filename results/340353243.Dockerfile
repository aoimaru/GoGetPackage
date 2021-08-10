[app/sources/340353243.Dockerfile]
digraph {
  "sha256:042e0b593fed7ae998431dfa2d3977eea0a200811ead6c6080f08d605a75b3a8" [label="docker-image://docker.io/library/gazebo:gzserver9-xenial" shape="ellipse"];
  "sha256:c11281835fd16deabfb3da66ec25f5138254021550057059059f74d453174005" [label="/bin/sh -c apt-get update && apt-get install -q -y     libgazebo9-dev=9.9.0-1*     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:c5c77d60a2507f06208a9d1fcd17832d0bcbe5974f96f5c76361bd12a50d87cc" [label="sha256:c5c77d60a2507f06208a9d1fcd17832d0bcbe5974f96f5c76361bd12a50d87cc" shape="plaintext"];
  "sha256:042e0b593fed7ae998431dfa2d3977eea0a200811ead6c6080f08d605a75b3a8" -> "sha256:c11281835fd16deabfb3da66ec25f5138254021550057059059f74d453174005" [label=""];
  "sha256:c11281835fd16deabfb3da66ec25f5138254021550057059059f74d453174005" -> "sha256:c5c77d60a2507f06208a9d1fcd17832d0bcbe5974f96f5c76361bd12a50d87cc" [label=""];
}

