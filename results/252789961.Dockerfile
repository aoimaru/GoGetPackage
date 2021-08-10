[app/sources/252789961.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:144c238ae24b9cb96e8c68b8026f001c8aa96f105acf49f9b28404ddaf325b16" [label="/bin/sh -c apt-get install -y wget" shape="box"];
  "sha256:26c119de5fc07f84cc62e6c015d421bad37d25628847183481d0ffb3700bc222" [label="/bin/sh -c apt-get install -y vim" shape="box"];
  "sha256:4582822358f98298801c9dddbfb820a7a0aca48d6b7e5a17f7c0488457e7e7fa" [label="sha256:4582822358f98298801c9dddbfb820a7a0aca48d6b7e5a17f7c0488457e7e7fa" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" [label=""];
  "sha256:0f2c748e1375601bb4852b7328ad311f2e7ec25abfa3dd6a956c15d84caf59ca" -> "sha256:144c238ae24b9cb96e8c68b8026f001c8aa96f105acf49f9b28404ddaf325b16" [label=""];
  "sha256:144c238ae24b9cb96e8c68b8026f001c8aa96f105acf49f9b28404ddaf325b16" -> "sha256:26c119de5fc07f84cc62e6c015d421bad37d25628847183481d0ffb3700bc222" [label=""];
  "sha256:26c119de5fc07f84cc62e6c015d421bad37d25628847183481d0ffb3700bc222" -> "sha256:4582822358f98298801c9dddbfb820a7a0aca48d6b7e5a17f7c0488457e7e7fa" [label=""];
}

