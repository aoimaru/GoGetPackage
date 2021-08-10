[app/sources/218275834.Dockerfile]
digraph {
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" [label="docker-image://docker.io/library/ruby:2.5.1" shape="ellipse"];
  "sha256:299cc0361592e9a4986b0a9a2278508c41c29f0123d91482725fe499862bd976" [label="/bin/sh -c bundle config --global frozen 1 &&     mkdir -p /usr/src/app" shape="box"];
  "sha256:ec1f61ef83a3b4a2b497328dd9e0be01d4d745ac720091287be0212b17710f2d" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:5ab2de8c849a9bb9e8313903f7d4e1e3003a072bc622085de7b641243c60b6a0" [label="local://context" shape="ellipse"];
  "sha256:a77950cd76dac967ca66b6d44bb38449109deb69aa6b2fb5c3c21cd3e2b2c2f2" [label="copy{src=/Gemfile, dest=/usr/src/app/},copy{src=/Gemfile.lock, dest=/usr/src/app/}" shape="note"];
  "sha256:a473d3170824c899aa66f06f24b1b2097b1dfdff14daf5d225c98f2029e4d8e7" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:57a49ef93f9d69f36787d03649eca742da8d7caf9ea2f578aebac81a5a257390" [label="copy{src=/, dest=/usr/src/app}" shape="note"];
  "sha256:bf19a171ac10781f80fb84d81acdd2210f146e6979fc826315b8c758a9b4a554" [label="/bin/sh -c bundle exec rails assets:precompile" shape="box"];
  "sha256:bb3bea81c57f0c23e3ba407b3719ba3dd57704554b9cce9d829a3dc36bffa831" [label="sha256:bb3bea81c57f0c23e3ba407b3719ba3dd57704554b9cce9d829a3dc36bffa831" shape="plaintext"];
  "sha256:b33ef471c0dc7bf03dcfa41d54fc3458b3b3e140212f4ed4aadc31fcdfcf85a0" -> "sha256:299cc0361592e9a4986b0a9a2278508c41c29f0123d91482725fe499862bd976" [label=""];
  "sha256:299cc0361592e9a4986b0a9a2278508c41c29f0123d91482725fe499862bd976" -> "sha256:ec1f61ef83a3b4a2b497328dd9e0be01d4d745ac720091287be0212b17710f2d" [label=""];
  "sha256:ec1f61ef83a3b4a2b497328dd9e0be01d4d745ac720091287be0212b17710f2d" -> "sha256:a77950cd76dac967ca66b6d44bb38449109deb69aa6b2fb5c3c21cd3e2b2c2f2" [label=""];
  "sha256:5ab2de8c849a9bb9e8313903f7d4e1e3003a072bc622085de7b641243c60b6a0" -> "sha256:a77950cd76dac967ca66b6d44bb38449109deb69aa6b2fb5c3c21cd3e2b2c2f2" [label=""];
  "sha256:a77950cd76dac967ca66b6d44bb38449109deb69aa6b2fb5c3c21cd3e2b2c2f2" -> "sha256:a473d3170824c899aa66f06f24b1b2097b1dfdff14daf5d225c98f2029e4d8e7" [label=""];
  "sha256:a473d3170824c899aa66f06f24b1b2097b1dfdff14daf5d225c98f2029e4d8e7" -> "sha256:57a49ef93f9d69f36787d03649eca742da8d7caf9ea2f578aebac81a5a257390" [label=""];
  "sha256:5ab2de8c849a9bb9e8313903f7d4e1e3003a072bc622085de7b641243c60b6a0" -> "sha256:57a49ef93f9d69f36787d03649eca742da8d7caf9ea2f578aebac81a5a257390" [label=""];
  "sha256:57a49ef93f9d69f36787d03649eca742da8d7caf9ea2f578aebac81a5a257390" -> "sha256:bf19a171ac10781f80fb84d81acdd2210f146e6979fc826315b8c758a9b4a554" [label=""];
  "sha256:bf19a171ac10781f80fb84d81acdd2210f146e6979fc826315b8c758a9b4a554" -> "sha256:bb3bea81c57f0c23e3ba407b3719ba3dd57704554b9cce9d829a3dc36bffa831" [label=""];
}

