[app/sources/273542227.Dockerfile]
digraph {
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" [label="docker-image://docker.io/library/alpine:latest" shape="ellipse"];
  "sha256:2adfa07ff2a6228587a29725ee3557082fadb674178916216b968f64483d0548" [label="local://context" shape="ellipse"];
  "sha256:c1a505b167957020cc57627227fc4676307957ed8a8d5cd0916005bcadd68dff" [label="copy{src=/webhook, dest=/webhook}" shape="note"];
  "sha256:a10d153dfbceab13c35e4214452f36fc3dfb97c850dacef87345cc7c00302355" [label="sha256:a10d153dfbceab13c35e4214452f36fc3dfb97c850dacef87345cc7c00302355" shape="plaintext"];
  "sha256:665ba8b2cdc0cb0200e2a42a6b3c0f8f684089f4cd1b81494fbb9805879120f7" -> "sha256:c1a505b167957020cc57627227fc4676307957ed8a8d5cd0916005bcadd68dff" [label=""];
  "sha256:2adfa07ff2a6228587a29725ee3557082fadb674178916216b968f64483d0548" -> "sha256:c1a505b167957020cc57627227fc4676307957ed8a8d5cd0916005bcadd68dff" [label=""];
  "sha256:c1a505b167957020cc57627227fc4676307957ed8a8d5cd0916005bcadd68dff" -> "sha256:a10d153dfbceab13c35e4214452f36fc3dfb97c850dacef87345cc7c00302355" [label=""];
}

