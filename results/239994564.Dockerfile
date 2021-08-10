[app/sources/239994564.Dockerfile]
digraph {
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" [label="docker-image://docker.io/frolvlad/alpine-oraclejdk8:slim" shape="ellipse"];
  "sha256:6857436061d629a2340e4f6a6a454f478b70e1126ee67513f3607c8a686a8691" [label="local://context" shape="ellipse"];
  "sha256:d950df8c6c173d68994452fef258a7f6655ed13e440c476da986eb83d781ad64" [label="copy{src=/hystrix-turbine-dashboard-1.0.jar, dest=/app.jar}" shape="note"];
  "sha256:a95ab46fea7011da04262590cfa7050c3dcd070561b9cf05441ee6abcd11a376" [label="/bin/sh -c sh -c 'touch /app.jar'" shape="box"];
  "sha256:16f58ab5b6a035c349fb297affa9fe7453530f061bd6b50dd81084668ad0714b" [label="sha256:16f58ab5b6a035c349fb297affa9fe7453530f061bd6b50dd81084668ad0714b" shape="plaintext"];
  "sha256:e231423e04f1becf0d9b5f160a852a2b2596ed150e82b9d747d698a9782e3888" -> "sha256:d950df8c6c173d68994452fef258a7f6655ed13e440c476da986eb83d781ad64" [label=""];
  "sha256:6857436061d629a2340e4f6a6a454f478b70e1126ee67513f3607c8a686a8691" -> "sha256:d950df8c6c173d68994452fef258a7f6655ed13e440c476da986eb83d781ad64" [label=""];
  "sha256:d950df8c6c173d68994452fef258a7f6655ed13e440c476da986eb83d781ad64" -> "sha256:a95ab46fea7011da04262590cfa7050c3dcd070561b9cf05441ee6abcd11a376" [label=""];
  "sha256:a95ab46fea7011da04262590cfa7050c3dcd070561b9cf05441ee6abcd11a376" -> "sha256:16f58ab5b6a035c349fb297affa9fe7453530f061bd6b50dd81084668ad0714b" [label=""];
}

