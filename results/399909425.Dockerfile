[app/sources/399909425.Dockerfile]
digraph {
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:e1f72ff5150483ea82d05b6e957a264cf1b68899e7cd3146c69b95f75e937cf0" [label="/bin/sh -c apt-get -y update && apt-get install -y git autoconf automake gettext autopoint libtool make g++ texinfo curl" shape="box"];
  "sha256:25fc556f31a05ce6a5ab809adf772c8121143689f0f3a1d67f5e2306a12ae1c1" [label="mkdir{path=/root}" shape="note"];
  "sha256:c4b650c9a2827df5ba3bcff9930a54ac17292684b3fe6dbe75ecd638cc2fa57b" [label="/bin/sh -c git clone https://github.com/emcrisostomo/fswatch.git" shape="box"];
  "sha256:f4863d80a2da139a822e9f9256fd4ad297971aa3ec5cf888f295844d9b41e084" [label="mkdir{path=/root/fswatch}" shape="note"];
  "sha256:7bf27c44ebdf84e70129633f48d0e18f95c5cd7e3c33f9e464f918c2419b7ea6" [label="/bin/sh -c git checkout ${FSWATCH_BRANCH}" shape="box"];
  "sha256:fb36050c227ff2e182f7766c7b31b35acc798f0805e08c7a3a10ab7cf3c6aefc" [label="/bin/sh -c ./autogen.sh && ./configure && make -j" shape="box"];
  "sha256:d58c4a3eafbfe9cec66d9ee6bddcc2d28027416e773ba8bc3a3279244a3eb711" [label="sha256:d58c4a3eafbfe9cec66d9ee6bddcc2d28027416e773ba8bc3a3279244a3eb711" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:e1f72ff5150483ea82d05b6e957a264cf1b68899e7cd3146c69b95f75e937cf0" [label=""];
  "sha256:e1f72ff5150483ea82d05b6e957a264cf1b68899e7cd3146c69b95f75e937cf0" -> "sha256:25fc556f31a05ce6a5ab809adf772c8121143689f0f3a1d67f5e2306a12ae1c1" [label=""];
  "sha256:25fc556f31a05ce6a5ab809adf772c8121143689f0f3a1d67f5e2306a12ae1c1" -> "sha256:c4b650c9a2827df5ba3bcff9930a54ac17292684b3fe6dbe75ecd638cc2fa57b" [label=""];
  "sha256:c4b650c9a2827df5ba3bcff9930a54ac17292684b3fe6dbe75ecd638cc2fa57b" -> "sha256:f4863d80a2da139a822e9f9256fd4ad297971aa3ec5cf888f295844d9b41e084" [label=""];
  "sha256:f4863d80a2da139a822e9f9256fd4ad297971aa3ec5cf888f295844d9b41e084" -> "sha256:7bf27c44ebdf84e70129633f48d0e18f95c5cd7e3c33f9e464f918c2419b7ea6" [label=""];
  "sha256:7bf27c44ebdf84e70129633f48d0e18f95c5cd7e3c33f9e464f918c2419b7ea6" -> "sha256:fb36050c227ff2e182f7766c7b31b35acc798f0805e08c7a3a10ab7cf3c6aefc" [label=""];
  "sha256:fb36050c227ff2e182f7766c7b31b35acc798f0805e08c7a3a10ab7cf3c6aefc" -> "sha256:d58c4a3eafbfe9cec66d9ee6bddcc2d28027416e773ba8bc3a3279244a3eb711" [label=""];
}

