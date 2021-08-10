[app/sources/465249375.Dockerfile]
digraph {
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" [label="local://context" shape="ellipse"];
  "sha256:d40e30fb12de769ed39d921f2659c8f9a1843a3c1e80e2c046d9a23d87160f3e" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:bf48aa4269d2fb768d4c4771e1d6386d89bf364fc3bd26f9d7a7960b8390fc56" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:7bfdbacd4dcdf7f558bc3565950ab143c0d081cd23984c33c03bcb490ac49100" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:da1df781857a2d9b8572181f726d3990744d6b69cadb634335bb0bba06d0692a" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:ef60e4e284cb85e0936630fffecbcb4e3c1e344f51e6aa35200e3141a1784c41" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:b5c55c855502ca37e6984596446131b9a0fa3175e2442f629515c702b057a422" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:7a9cf24ee995ad8459b89017c5125cab4b1ddcdbc459661961f5ba8922588709" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:3a9733bc61207f32674daa1d4c692eb3affff25576f284bdacf486f7187cb142" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:5771ba01219d4806eb1383a87319ad53b187c1f5149cc0f81eec3872e0ddc8a9" [label="sha256:5771ba01219d4806eb1383a87319ad53b187c1f5149cc0f81eec3872e0ddc8a9" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:d40e30fb12de769ed39d921f2659c8f9a1843a3c1e80e2c046d9a23d87160f3e" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:d40e30fb12de769ed39d921f2659c8f9a1843a3c1e80e2c046d9a23d87160f3e" [label=""];
  "sha256:d40e30fb12de769ed39d921f2659c8f9a1843a3c1e80e2c046d9a23d87160f3e" -> "sha256:bf48aa4269d2fb768d4c4771e1d6386d89bf364fc3bd26f9d7a7960b8390fc56" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:bf48aa4269d2fb768d4c4771e1d6386d89bf364fc3bd26f9d7a7960b8390fc56" [label=""];
  "sha256:bf48aa4269d2fb768d4c4771e1d6386d89bf364fc3bd26f9d7a7960b8390fc56" -> "sha256:7bfdbacd4dcdf7f558bc3565950ab143c0d081cd23984c33c03bcb490ac49100" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:7bfdbacd4dcdf7f558bc3565950ab143c0d081cd23984c33c03bcb490ac49100" [label=""];
  "sha256:7bfdbacd4dcdf7f558bc3565950ab143c0d081cd23984c33c03bcb490ac49100" -> "sha256:da1df781857a2d9b8572181f726d3990744d6b69cadb634335bb0bba06d0692a" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:da1df781857a2d9b8572181f726d3990744d6b69cadb634335bb0bba06d0692a" [label=""];
  "sha256:da1df781857a2d9b8572181f726d3990744d6b69cadb634335bb0bba06d0692a" -> "sha256:ef60e4e284cb85e0936630fffecbcb4e3c1e344f51e6aa35200e3141a1784c41" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:ef60e4e284cb85e0936630fffecbcb4e3c1e344f51e6aa35200e3141a1784c41" [label=""];
  "sha256:ef60e4e284cb85e0936630fffecbcb4e3c1e344f51e6aa35200e3141a1784c41" -> "sha256:b5c55c855502ca37e6984596446131b9a0fa3175e2442f629515c702b057a422" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:b5c55c855502ca37e6984596446131b9a0fa3175e2442f629515c702b057a422" [label=""];
  "sha256:b5c55c855502ca37e6984596446131b9a0fa3175e2442f629515c702b057a422" -> "sha256:7a9cf24ee995ad8459b89017c5125cab4b1ddcdbc459661961f5ba8922588709" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:7a9cf24ee995ad8459b89017c5125cab4b1ddcdbc459661961f5ba8922588709" [label=""];
  "sha256:7a9cf24ee995ad8459b89017c5125cab4b1ddcdbc459661961f5ba8922588709" -> "sha256:3a9733bc61207f32674daa1d4c692eb3affff25576f284bdacf486f7187cb142" [label=""];
  "sha256:0731df96b874a489feefa9ca1fd8d5e6987da4ed209d8eaf6afdc339f6a46cf6" -> "sha256:3a9733bc61207f32674daa1d4c692eb3affff25576f284bdacf486f7187cb142" [label=""];
  "sha256:3a9733bc61207f32674daa1d4c692eb3affff25576f284bdacf486f7187cb142" -> "sha256:5771ba01219d4806eb1383a87319ad53b187c1f5149cc0f81eec3872e0ddc8a9" [label=""];
}

