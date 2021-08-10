[app/sources/216597125.Dockerfile]
digraph {
  "sha256:2b3a18563fe4c7afa58de55d05aed449f0662b6eccb8cde1893582ecc240f537" [label="docker-image://docker.io/mlbench/mlbench_worker:mlbench-worker-base" shape="ellipse"];
  "sha256:96819391f97fc647bc1f85f3b8358d800be08d1dc6535b567bfc1f88ce1c3f05" [label="/bin/sh -c apt-get update && apt-get install -y vim net-tools iproute2" shape="box"];
  "sha256:df94ec4177b1030022beec2147ddef45b56840396d2551c6be541d0a46759fba" [label="local://context" shape="ellipse"];
  "sha256:b8d813755e3ce7f1d93d09c7bba551403b6f7aac2b803e68e10856440745b49c" [label="copy{src=/mlbench/worker, dest=/app/}" shape="note"];
  "sha256:fc0d990fdd831019c21febc28727b6eb4165bfa75e326ce5ea2b33da6f87b01f" [label="/bin/sh -c mkdir /codes" shape="box"];
  "sha256:fa839ca37732fdc51eb58d18d3eabb9e62c229796e0b034ab8b1ae9a921b39f9" [label="copy{src=/mlbench/refimpls/pytorch, dest=/codes}" shape="note"];
  "sha256:42e6516144d83b31c3d3eb72837d8dee165a749fc06f18ef045a83982ab01cf0" [label="copy{src=/compose/worker/requirements.txt, dest=/requirements.txt}" shape="note"];
  "sha256:0bee544440925e036d3322b894d0a991fee40a9f151c5dc3980959561325666d" [label="/bin/sh -c pip install --no-cache-dir -r /requirements.txt" shape="box"];
  "sha256:c5e29924659b4a90bab961efa4e576fc86d09dfe41bc118f96e40b080961e36c" [label="/bin/sh -c rm $(ldconfig 2>&1 | grep 'is empty, not checked' | awk '{print $3}') 2> /dev/null || true" shape="box"];
  "sha256:c1ddc8bd675d8f6f9deecc8c203b7036f88707dd37bbbcf7e19873df1f42be29" [label="/bin/sh -c pip install tensorpack" shape="box"];
  "sha256:cd564e1808c9bd302e66b515c7f890e721b8beed4e5d6cef0b70cbb1e800fb64" [label="sha256:cd564e1808c9bd302e66b515c7f890e721b8beed4e5d6cef0b70cbb1e800fb64" shape="plaintext"];
  "sha256:2b3a18563fe4c7afa58de55d05aed449f0662b6eccb8cde1893582ecc240f537" -> "sha256:96819391f97fc647bc1f85f3b8358d800be08d1dc6535b567bfc1f88ce1c3f05" [label=""];
  "sha256:96819391f97fc647bc1f85f3b8358d800be08d1dc6535b567bfc1f88ce1c3f05" -> "sha256:b8d813755e3ce7f1d93d09c7bba551403b6f7aac2b803e68e10856440745b49c" [label=""];
  "sha256:df94ec4177b1030022beec2147ddef45b56840396d2551c6be541d0a46759fba" -> "sha256:b8d813755e3ce7f1d93d09c7bba551403b6f7aac2b803e68e10856440745b49c" [label=""];
  "sha256:b8d813755e3ce7f1d93d09c7bba551403b6f7aac2b803e68e10856440745b49c" -> "sha256:fc0d990fdd831019c21febc28727b6eb4165bfa75e326ce5ea2b33da6f87b01f" [label=""];
  "sha256:fc0d990fdd831019c21febc28727b6eb4165bfa75e326ce5ea2b33da6f87b01f" -> "sha256:fa839ca37732fdc51eb58d18d3eabb9e62c229796e0b034ab8b1ae9a921b39f9" [label=""];
  "sha256:df94ec4177b1030022beec2147ddef45b56840396d2551c6be541d0a46759fba" -> "sha256:fa839ca37732fdc51eb58d18d3eabb9e62c229796e0b034ab8b1ae9a921b39f9" [label=""];
  "sha256:fa839ca37732fdc51eb58d18d3eabb9e62c229796e0b034ab8b1ae9a921b39f9" -> "sha256:42e6516144d83b31c3d3eb72837d8dee165a749fc06f18ef045a83982ab01cf0" [label=""];
  "sha256:df94ec4177b1030022beec2147ddef45b56840396d2551c6be541d0a46759fba" -> "sha256:42e6516144d83b31c3d3eb72837d8dee165a749fc06f18ef045a83982ab01cf0" [label=""];
  "sha256:42e6516144d83b31c3d3eb72837d8dee165a749fc06f18ef045a83982ab01cf0" -> "sha256:0bee544440925e036d3322b894d0a991fee40a9f151c5dc3980959561325666d" [label=""];
  "sha256:0bee544440925e036d3322b894d0a991fee40a9f151c5dc3980959561325666d" -> "sha256:c5e29924659b4a90bab961efa4e576fc86d09dfe41bc118f96e40b080961e36c" [label=""];
  "sha256:c5e29924659b4a90bab961efa4e576fc86d09dfe41bc118f96e40b080961e36c" -> "sha256:c1ddc8bd675d8f6f9deecc8c203b7036f88707dd37bbbcf7e19873df1f42be29" [label=""];
  "sha256:c1ddc8bd675d8f6f9deecc8c203b7036f88707dd37bbbcf7e19873df1f42be29" -> "sha256:cd564e1808c9bd302e66b515c7f890e721b8beed4e5d6cef0b70cbb1e800fb64" [label=""];
}

