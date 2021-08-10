[app/sources/462538542.Dockerfile]
digraph {
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" [label="docker-image://docker.io/library/java:7" shape="ellipse"];
  "sha256:a61339ead770234e212dfa71db17455ec9cb7f0adb13eca9f9b1a1312e71cb85" [label="local://context" shape="ellipse"];
  "sha256:90502b309946305e3b640882a623460d213e1c36f65c24a23761692099e98c97" [label="copy{src=/configserver-0.0.1-SNAPSHOT.jar, dest=/app.jar}" shape="note"];
  "sha256:c83c9b3c0f2d6691a1f51efd90d651c22d54090ab69aeebdd360184baf173425" [label="/bin/sh -c bash -c 'touch /app.jar'" shape="box"];
  "sha256:fd00ba975550d0f0d560b73b7a73493fbfd02cb94c66aa0876fc625fc0ca0774" [label="sha256:fd00ba975550d0f0d560b73b7a73493fbfd02cb94c66aa0876fc625fc0ca0774" shape="plaintext"];
  "sha256:326a0588de29476d1bad73c39e7f9aa979af9e7d551a1f897f06f91166636846" -> "sha256:90502b309946305e3b640882a623460d213e1c36f65c24a23761692099e98c97" [label=""];
  "sha256:a61339ead770234e212dfa71db17455ec9cb7f0adb13eca9f9b1a1312e71cb85" -> "sha256:90502b309946305e3b640882a623460d213e1c36f65c24a23761692099e98c97" [label=""];
  "sha256:90502b309946305e3b640882a623460d213e1c36f65c24a23761692099e98c97" -> "sha256:c83c9b3c0f2d6691a1f51efd90d651c22d54090ab69aeebdd360184baf173425" [label=""];
  "sha256:c83c9b3c0f2d6691a1f51efd90d651c22d54090ab69aeebdd360184baf173425" -> "sha256:fd00ba975550d0f0d560b73b7a73493fbfd02cb94c66aa0876fc625fc0ca0774" [label=""];
}
