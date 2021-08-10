[app/sources/129670453.Dockerfile]
digraph {
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" [label="local://context" shape="ellipse"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" [label="docker-image://docker.io/library/nginx:1.9" shape="ellipse"];
  "sha256:d960161a980b92b81785ed0410a5331b560c07885e00f35487e3b489a74d8186" [label="copy{src=/nginx.conf, dest=/etc/nginx/nginx.conf}" shape="note"];
  "sha256:585285e6ff74903040d3f68d8e25b35d97dd5552d5128d6c3eeb9ebff5342f1e" [label="copy{src=/registry.conf, dest=/etc/nginx/conf.d/registry.conf}" shape="note"];
  "sha256:5f51494adb7e4c26bc415bb03233d2c315e6625aa910f98d90e259912e401c68" [label="copy{src=/docker-registry-v2.conf, dest=/etc/nginx/docker-registry-v2.conf}" shape="note"];
  "sha256:7bad14340594c9bd762f36a378e9a4f35ea975cf34da40d90e219b756f0db243" [label="copy{src=/registry-noauth.conf, dest=/etc/nginx/registry-noauth.conf}" shape="note"];
  "sha256:75a4420baaecbcedda40bbbc79efa650b45835cbfaf9a3ff7e77696972eaae3d" [label="copy{src=/registry-basic.conf, dest=/etc/nginx/registry-basic.conf}" shape="note"];
  "sha256:a64c644471ded2e11ee40f18b20cad212441397c9eb909b848818b44aa66abb9" [label="copy{src=/test.passwd, dest=/etc/nginx/test.passwd}" shape="note"];
  "sha256:ca61842794b030e7f6fec79ff8f55198f02db050ceb16a182b8e1399db07ba0a" [label="copy{src=/ssl, dest=/etc/nginx/ssl}" shape="note"];
  "sha256:bce7fc9133f1db628af854e4794844f88a9bab9911978814c5f25300b4eede6c" [label="copy{src=/v1, dest=/var/www/html/v1}" shape="note"];
  "sha256:533b7602c6f2ffac23c45c980ccabc711f38a243d4c915bf3d70dc6cfa7b8ec0" [label="sha256:533b7602c6f2ffac23c45c980ccabc711f38a243d4c915bf3d70dc6cfa7b8ec0" shape="plaintext"];
  "sha256:41fd22cdbd9ce09a6a60826c8a9ef9bad1acc47038b7403637e2e97b9bc3303b" -> "sha256:d960161a980b92b81785ed0410a5331b560c07885e00f35487e3b489a74d8186" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:d960161a980b92b81785ed0410a5331b560c07885e00f35487e3b489a74d8186" [label=""];
  "sha256:d960161a980b92b81785ed0410a5331b560c07885e00f35487e3b489a74d8186" -> "sha256:585285e6ff74903040d3f68d8e25b35d97dd5552d5128d6c3eeb9ebff5342f1e" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:585285e6ff74903040d3f68d8e25b35d97dd5552d5128d6c3eeb9ebff5342f1e" [label=""];
  "sha256:585285e6ff74903040d3f68d8e25b35d97dd5552d5128d6c3eeb9ebff5342f1e" -> "sha256:5f51494adb7e4c26bc415bb03233d2c315e6625aa910f98d90e259912e401c68" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:5f51494adb7e4c26bc415bb03233d2c315e6625aa910f98d90e259912e401c68" [label=""];
  "sha256:5f51494adb7e4c26bc415bb03233d2c315e6625aa910f98d90e259912e401c68" -> "sha256:7bad14340594c9bd762f36a378e9a4f35ea975cf34da40d90e219b756f0db243" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:7bad14340594c9bd762f36a378e9a4f35ea975cf34da40d90e219b756f0db243" [label=""];
  "sha256:7bad14340594c9bd762f36a378e9a4f35ea975cf34da40d90e219b756f0db243" -> "sha256:75a4420baaecbcedda40bbbc79efa650b45835cbfaf9a3ff7e77696972eaae3d" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:75a4420baaecbcedda40bbbc79efa650b45835cbfaf9a3ff7e77696972eaae3d" [label=""];
  "sha256:75a4420baaecbcedda40bbbc79efa650b45835cbfaf9a3ff7e77696972eaae3d" -> "sha256:a64c644471ded2e11ee40f18b20cad212441397c9eb909b848818b44aa66abb9" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:a64c644471ded2e11ee40f18b20cad212441397c9eb909b848818b44aa66abb9" [label=""];
  "sha256:a64c644471ded2e11ee40f18b20cad212441397c9eb909b848818b44aa66abb9" -> "sha256:ca61842794b030e7f6fec79ff8f55198f02db050ceb16a182b8e1399db07ba0a" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:ca61842794b030e7f6fec79ff8f55198f02db050ceb16a182b8e1399db07ba0a" [label=""];
  "sha256:ca61842794b030e7f6fec79ff8f55198f02db050ceb16a182b8e1399db07ba0a" -> "sha256:bce7fc9133f1db628af854e4794844f88a9bab9911978814c5f25300b4eede6c" [label=""];
  "sha256:b75f9e3988e91fd587a88dd04111d4c2c0aea0cfe8b742d50cbab10b16ede543" -> "sha256:bce7fc9133f1db628af854e4794844f88a9bab9911978814c5f25300b4eede6c" [label=""];
  "sha256:bce7fc9133f1db628af854e4794844f88a9bab9911978814c5f25300b4eede6c" -> "sha256:533b7602c6f2ffac23c45c980ccabc711f38a243d4c915bf3d70dc6cfa7b8ec0" [label=""];
}

