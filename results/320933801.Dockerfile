[app/sources/320933801.Dockerfile]
digraph {
  "sha256:85445e1d307c8b3e46b3a2dd759648016f07f7438178b70e1e5db6474937f372" [label="docker-image://gcr.io/google_appengine/nodejs@sha256:10d0691c6e80b09d32649c69e83a9358d1cf9429a991f868eb2dbfe33fff776f" shape="ellipse"];
  "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" [label="/bin/sh -c /usr/local/bin/install_node '>=0.12.7'" shape="box"];
  "sha256:5ec764bb591cd6b6a3faa4684660c9aa008621135d9a83674a65cfa7695ab44a" [label="local://context" shape="ellipse"];
  "sha256:f6dfd55fd6aab18a524a39501e1e2092aaa2883db1abad1d81fc37e212c01352" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:47f2ae2522647be0bb7cd3b49840c6ff43457896b03e7327b6606bd307c9aaf0" [label="/bin/sh -c npm install --unsafe-perm ||   ((if [ -f npm-debug.log ]; then   cat npm-debug.log;   fi) && false)" shape="box"];
  "sha256:0bc985b2b605c124514d54ce680b189d561506199e6f950a4f2fd3b0cd700914" [label="/bin/sh -c npm rebuild" shape="box"];
  "sha256:980b2391baa908e51331dfff27f3aa03abb37e9d68e9587631c659f628a78cdd" [label="sha256:980b2391baa908e51331dfff27f3aa03abb37e9d68e9587631c659f628a78cdd" shape="plaintext"];
  "sha256:85445e1d307c8b3e46b3a2dd759648016f07f7438178b70e1e5db6474937f372" -> "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" [label=""];
  "sha256:3c6c7b2fa227d876f29b33af0fe491f6835306c3bbaca0a7c55d45c68fbfe423" -> "sha256:f6dfd55fd6aab18a524a39501e1e2092aaa2883db1abad1d81fc37e212c01352" [label=""];
  "sha256:5ec764bb591cd6b6a3faa4684660c9aa008621135d9a83674a65cfa7695ab44a" -> "sha256:f6dfd55fd6aab18a524a39501e1e2092aaa2883db1abad1d81fc37e212c01352" [label=""];
  "sha256:f6dfd55fd6aab18a524a39501e1e2092aaa2883db1abad1d81fc37e212c01352" -> "sha256:47f2ae2522647be0bb7cd3b49840c6ff43457896b03e7327b6606bd307c9aaf0" [label=""];
  "sha256:47f2ae2522647be0bb7cd3b49840c6ff43457896b03e7327b6606bd307c9aaf0" -> "sha256:0bc985b2b605c124514d54ce680b189d561506199e6f950a4f2fd3b0cd700914" [label=""];
  "sha256:0bc985b2b605c124514d54ce680b189d561506199e6f950a4f2fd3b0cd700914" -> "sha256:980b2391baa908e51331dfff27f3aa03abb37e9d68e9587631c659f628a78cdd" [label=""];
}

