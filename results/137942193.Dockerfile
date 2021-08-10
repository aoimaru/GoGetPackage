[app/sources/137942193.Dockerfile]
digraph {
  "sha256:5d4e8aa67741cc6e871db797995d1623a7a014c0ea6b3e53534afe84c61deb9e" [label="docker-image://docker.io/greole/ipandas:latest" shape="ellipse"];
  "sha256:08cea2579f91ea5ca8b68412b99e0f10b59248f6d1355525de6a4a4c417f1719" [label="local://context" shape="ellipse"];
  "sha256:e2e21611ab55a35dc1ba99663fa545cd6aa53d983dc7c4b62e7e4954fac195c8" [label="copy{src=/, dest=/opt/owls}" shape="note"];
  "sha256:6a7f290b4354b82579b26e56d2ef15b0e6bcb2d17aa38fa88135bb37ce78a9b1" [label="mkdir{path=/opt/owls}" shape="note"];
  "sha256:89a4a5933aebb93cd8f2f06b95a50d2b267bc837807b4e8fed55907586481d48" [label="/bin/sh -c python3 setup.py install" shape="box"];
  "sha256:5e4e3aa18feb34584bdb11207599a3fdea7ea06b05306436d1b3b9f7ea6b1249" [label="mkdir{path=/notebooks}" shape="note"];
  "sha256:3a2ecda0e4eb5482fb590610fc323fc41ca897e570fe2507a9652df8e2b56152" [label="sha256:3a2ecda0e4eb5482fb590610fc323fc41ca897e570fe2507a9652df8e2b56152" shape="plaintext"];
  "sha256:5d4e8aa67741cc6e871db797995d1623a7a014c0ea6b3e53534afe84c61deb9e" -> "sha256:e2e21611ab55a35dc1ba99663fa545cd6aa53d983dc7c4b62e7e4954fac195c8" [label=""];
  "sha256:08cea2579f91ea5ca8b68412b99e0f10b59248f6d1355525de6a4a4c417f1719" -> "sha256:e2e21611ab55a35dc1ba99663fa545cd6aa53d983dc7c4b62e7e4954fac195c8" [label=""];
  "sha256:e2e21611ab55a35dc1ba99663fa545cd6aa53d983dc7c4b62e7e4954fac195c8" -> "sha256:6a7f290b4354b82579b26e56d2ef15b0e6bcb2d17aa38fa88135bb37ce78a9b1" [label=""];
  "sha256:6a7f290b4354b82579b26e56d2ef15b0e6bcb2d17aa38fa88135bb37ce78a9b1" -> "sha256:89a4a5933aebb93cd8f2f06b95a50d2b267bc837807b4e8fed55907586481d48" [label=""];
  "sha256:89a4a5933aebb93cd8f2f06b95a50d2b267bc837807b4e8fed55907586481d48" -> "sha256:5e4e3aa18feb34584bdb11207599a3fdea7ea06b05306436d1b3b9f7ea6b1249" [label=""];
  "sha256:5e4e3aa18feb34584bdb11207599a3fdea7ea06b05306436d1b3b9f7ea6b1249" -> "sha256:3a2ecda0e4eb5482fb590610fc323fc41ca897e570fe2507a9652df8e2b56152" [label=""];
}

