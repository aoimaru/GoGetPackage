[app/sources/280150671.Dockerfile]
digraph {
  "sha256:284db9d1da06d78affaf01da17ec1b7318f2951e75eeee3d2e513b301e86942e" [label="docker-image://docker.io/library/kong:0.11" shape="ellipse"];
  "sha256:0a755953f3eaae2d7ea84dc4700d7ca7ec2318f4a8020070028b6d5064754137" [label="/bin/sh -c yum -y update && yum -y install unzip openssl-devel" shape="box"];
  "sha256:179ce46fb5a78fd487afffa4a66c5a89c04a5aa3bc013460d8b436b2b1f561f9" [label="local://context" shape="ellipse"];
  "sha256:b177c8e5a94c751e8d942df2afba910c1a6d4bb206fe32a5e327112744dfd595" [label="copy{src=/load_kong_conf.sh, dest=/etc/kong}" shape="note"];
  "sha256:dc289b0d7499d44ee86310645d31f39963f8dab37b8f78dcbb30edbbc3e91dc3" [label="copy{src=/patches/openresty/lua-resty-string/aes.lua, dest=/usr/local/openresty/lualib/resty/aes.lua}" shape="note"];
  "sha256:9ae56cd528d707206897cd12ca3816428791efd280b67b91de8cd7b0f2baea29" [label="sha256:9ae56cd528d707206897cd12ca3816428791efd280b67b91de8cd7b0f2baea29" shape="plaintext"];
  "sha256:284db9d1da06d78affaf01da17ec1b7318f2951e75eeee3d2e513b301e86942e" -> "sha256:0a755953f3eaae2d7ea84dc4700d7ca7ec2318f4a8020070028b6d5064754137" [label=""];
  "sha256:0a755953f3eaae2d7ea84dc4700d7ca7ec2318f4a8020070028b6d5064754137" -> "sha256:b177c8e5a94c751e8d942df2afba910c1a6d4bb206fe32a5e327112744dfd595" [label=""];
  "sha256:179ce46fb5a78fd487afffa4a66c5a89c04a5aa3bc013460d8b436b2b1f561f9" -> "sha256:b177c8e5a94c751e8d942df2afba910c1a6d4bb206fe32a5e327112744dfd595" [label=""];
  "sha256:b177c8e5a94c751e8d942df2afba910c1a6d4bb206fe32a5e327112744dfd595" -> "sha256:dc289b0d7499d44ee86310645d31f39963f8dab37b8f78dcbb30edbbc3e91dc3" [label=""];
  "sha256:179ce46fb5a78fd487afffa4a66c5a89c04a5aa3bc013460d8b436b2b1f561f9" -> "sha256:dc289b0d7499d44ee86310645d31f39963f8dab37b8f78dcbb30edbbc3e91dc3" [label=""];
  "sha256:dc289b0d7499d44ee86310645d31f39963f8dab37b8f78dcbb30edbbc3e91dc3" -> "sha256:9ae56cd528d707206897cd12ca3816428791efd280b67b91de8cd7b0f2baea29" [label=""];
}

