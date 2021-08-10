[app/sources/263093189.Dockerfile]
digraph {
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" [label="docker-image://docker.io/library/alpine:3.4" shape="ellipse"];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label="/bin/sh -c apk add --no-cache redis sed bash" shape="box"];
  "sha256:5c63292b6009554a2289ae2b770fb6da7f65421ccc0f79b7366e3e9af1dc0795" [label="local://context" shape="ellipse"];
  "sha256:5fd382e6a32eb25b679448dc6793da42d751cbe8013b4c88aa03080a386677cb" [label="copy{src=/redis-master.conf, dest=/redis-master/redis.conf}" shape="note"];
  "sha256:ad8ee3198d888da59c2b4dab30b094ff30e40ba90dc0e7fa929424a01d88997b" [label="copy{src=/redis-slave.conf, dest=/redis-slave/redis.conf}" shape="note"];
  "sha256:510c3a24167ff41a42e4c2f735fc82b9ffc0e51d778a13ba1bd7e74b0f87fab7" [label="copy{src=/run.sh, dest=/run.sh}" shape="note"];
  "sha256:71e596b61b43eb27a52ac7f7b80821d1415612bdd6188d6748ec4af04d70cf72" [label="sha256:71e596b61b43eb27a52ac7f7b80821d1415612bdd6188d6748ec4af04d70cf72" shape="plaintext"];
  "sha256:bdf5ab2de7f571fda9b5f0198be240a0f9a5f6012c1d8362597525038689e4c5" -> "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" [label=""];
  "sha256:bd9a75d962498cd959dd1f80cf277e9eaa1996834c891a036173b74445d09a1f" -> "sha256:5fd382e6a32eb25b679448dc6793da42d751cbe8013b4c88aa03080a386677cb" [label=""];
  "sha256:5c63292b6009554a2289ae2b770fb6da7f65421ccc0f79b7366e3e9af1dc0795" -> "sha256:5fd382e6a32eb25b679448dc6793da42d751cbe8013b4c88aa03080a386677cb" [label=""];
  "sha256:5fd382e6a32eb25b679448dc6793da42d751cbe8013b4c88aa03080a386677cb" -> "sha256:ad8ee3198d888da59c2b4dab30b094ff30e40ba90dc0e7fa929424a01d88997b" [label=""];
  "sha256:5c63292b6009554a2289ae2b770fb6da7f65421ccc0f79b7366e3e9af1dc0795" -> "sha256:ad8ee3198d888da59c2b4dab30b094ff30e40ba90dc0e7fa929424a01d88997b" [label=""];
  "sha256:ad8ee3198d888da59c2b4dab30b094ff30e40ba90dc0e7fa929424a01d88997b" -> "sha256:510c3a24167ff41a42e4c2f735fc82b9ffc0e51d778a13ba1bd7e74b0f87fab7" [label=""];
  "sha256:5c63292b6009554a2289ae2b770fb6da7f65421ccc0f79b7366e3e9af1dc0795" -> "sha256:510c3a24167ff41a42e4c2f735fc82b9ffc0e51d778a13ba1bd7e74b0f87fab7" [label=""];
  "sha256:510c3a24167ff41a42e4c2f735fc82b9ffc0e51d778a13ba1bd7e74b0f87fab7" -> "sha256:71e596b61b43eb27a52ac7f7b80821d1415612bdd6188d6748ec4af04d70cf72" [label=""];
}

