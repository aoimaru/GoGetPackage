[app/sources/339992496.Dockerfile]
digraph {
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" [label="docker-image://docker.io/library/ubuntu:14.04.3" shape="ellipse"];
  "sha256:bcceb423626ab16682fd63f678e3c0aba9b6ee7b91c544047761c8c05ed401e3" [label="/bin/sh -c locale-gen en_US.UTF-8" shape="box"];
  "sha256:a5cf0a2ec0b2fd37679d8e8ec03dc778960b30074d8de4af99bed12347162466" [label="/bin/sh -c dpkg-reconfigure locales" shape="box"];
  "sha256:517bb09c9adc8ef5414de1a35a81864218c114dc707725bc41e0d87a971dc27b" [label="/bin/sh -c apt-get update -qq &&     DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -qqy         ca-certificates         wget         curl         &&     apt-get clean" shape="box"];
  "sha256:cb7929fd4c2aca1e7c411dbcca994115b3077a82f4119952465b1996af8fa0c1" [label="/bin/sh -c curl -o- https://raw.githubusercontent.com/karlkfi/resolveip/v1.0.2/install.sh | bash" shape="box"];
  "sha256:2e0c6aea9d12b0f6cef82806663a2a053ce793a1c4031429a9a49bdebf34cd7c" [label="local://context" shape="ellipse"];
  "sha256:abed242a7c4b1a3646c79c89a541fe084b3af895f3285efddf5bb7949c3d46c9" [label="copy{src=/bin/*, dest=/usr/local/bin/}" shape="note"];
  "sha256:b2393aa76143a9ab514065c53a3bcfcda5b093c13e1875b88e1a5ae747dd6163" [label="copy{src=/opt/*, dest=/opt/}" shape="note"];
  "sha256:3b892cc2e6a619fbe43e661a9c6bade1ea430e536a11c766e442f3b79458e764" [label="sha256:3b892cc2e6a619fbe43e661a9c6bade1ea430e536a11c766e442f3b79458e764" shape="plaintext"];
  "sha256:236ae56fc83254f4f61704bf1c3c0daed434f7cfcf9fe076ff5b5075c2839fef" -> "sha256:bcceb423626ab16682fd63f678e3c0aba9b6ee7b91c544047761c8c05ed401e3" [label=""];
  "sha256:bcceb423626ab16682fd63f678e3c0aba9b6ee7b91c544047761c8c05ed401e3" -> "sha256:a5cf0a2ec0b2fd37679d8e8ec03dc778960b30074d8de4af99bed12347162466" [label=""];
  "sha256:a5cf0a2ec0b2fd37679d8e8ec03dc778960b30074d8de4af99bed12347162466" -> "sha256:517bb09c9adc8ef5414de1a35a81864218c114dc707725bc41e0d87a971dc27b" [label=""];
  "sha256:517bb09c9adc8ef5414de1a35a81864218c114dc707725bc41e0d87a971dc27b" -> "sha256:cb7929fd4c2aca1e7c411dbcca994115b3077a82f4119952465b1996af8fa0c1" [label=""];
  "sha256:cb7929fd4c2aca1e7c411dbcca994115b3077a82f4119952465b1996af8fa0c1" -> "sha256:abed242a7c4b1a3646c79c89a541fe084b3af895f3285efddf5bb7949c3d46c9" [label=""];
  "sha256:2e0c6aea9d12b0f6cef82806663a2a053ce793a1c4031429a9a49bdebf34cd7c" -> "sha256:abed242a7c4b1a3646c79c89a541fe084b3af895f3285efddf5bb7949c3d46c9" [label=""];
  "sha256:abed242a7c4b1a3646c79c89a541fe084b3af895f3285efddf5bb7949c3d46c9" -> "sha256:b2393aa76143a9ab514065c53a3bcfcda5b093c13e1875b88e1a5ae747dd6163" [label=""];
  "sha256:2e0c6aea9d12b0f6cef82806663a2a053ce793a1c4031429a9a49bdebf34cd7c" -> "sha256:b2393aa76143a9ab514065c53a3bcfcda5b093c13e1875b88e1a5ae747dd6163" [label=""];
  "sha256:b2393aa76143a9ab514065c53a3bcfcda5b093c13e1875b88e1a5ae747dd6163" -> "sha256:3b892cc2e6a619fbe43e661a9c6bade1ea430e536a11c766e442f3b79458e764" [label=""];
}

