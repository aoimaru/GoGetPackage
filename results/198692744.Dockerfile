[app/sources/198692744.Dockerfile]
digraph {
  "sha256:1075a4c3426bbce0858acf34c139387d145299a208db2511cb20e33f09d74459" [label="local://context" shape="ellipse"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" [label="docker-image://docker.io/library/node:4" shape="ellipse"];
  "sha256:798db026f8b2ef7afbad6a05d7cef98784d5179b2174e1b104f4099a39a63c14" [label="copy{src=/package.json, dest=/}" shape="note"];
  "sha256:ce753c55df8191af9714738c3fcfe5d35a4444713327df29c4eb6d91098bba79" [label="/bin/sh -c npm install --silent" shape="box"];
  "sha256:e3a6395c3cdef04fb6608bcacbadc6ca4113e5dce18bd726f069edf12dfe8b60" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:c447491cdab01400c014736284aa9e4eaec202efd15c99b01515c4c84f0fb5b1" [label="sha256:c447491cdab01400c014736284aa9e4eaec202efd15c99b01515c4c84f0fb5b1" shape="plaintext"];
  "sha256:207237cf3203f4e03c369c3ad465d289de1d5c9af831688ebcfa671433e20ccb" -> "sha256:798db026f8b2ef7afbad6a05d7cef98784d5179b2174e1b104f4099a39a63c14" [label=""];
  "sha256:1075a4c3426bbce0858acf34c139387d145299a208db2511cb20e33f09d74459" -> "sha256:798db026f8b2ef7afbad6a05d7cef98784d5179b2174e1b104f4099a39a63c14" [label=""];
  "sha256:798db026f8b2ef7afbad6a05d7cef98784d5179b2174e1b104f4099a39a63c14" -> "sha256:ce753c55df8191af9714738c3fcfe5d35a4444713327df29c4eb6d91098bba79" [label=""];
  "sha256:ce753c55df8191af9714738c3fcfe5d35a4444713327df29c4eb6d91098bba79" -> "sha256:e3a6395c3cdef04fb6608bcacbadc6ca4113e5dce18bd726f069edf12dfe8b60" [label=""];
  "sha256:1075a4c3426bbce0858acf34c139387d145299a208db2511cb20e33f09d74459" -> "sha256:e3a6395c3cdef04fb6608bcacbadc6ca4113e5dce18bd726f069edf12dfe8b60" [label=""];
  "sha256:e3a6395c3cdef04fb6608bcacbadc6ca4113e5dce18bd726f069edf12dfe8b60" -> "sha256:c447491cdab01400c014736284aa9e4eaec202efd15c99b01515c4c84f0fb5b1" [label=""];
}

