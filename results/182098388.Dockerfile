[app/sources/182098388.Dockerfile]
digraph {
  "sha256:3a2d1c63feca20176ca66ca19940fc3ba226d73e10c0462bdf30f36d45c54f9f" [label="local://context" shape="ellipse"];
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" [label="docker-image://docker.io/library/rhel7:latest" shape="ellipse"];
  "sha256:677f7856ad4f89e703b418515f05bc256ad746eebb7bdb0843263be36cb032ce" [label="/bin/sh -c rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-5.noarch.rpm" shape="box"];
  "sha256:5f35e18907a48d7df7b9ce4bad18facf4788e26a83afc0750bc6752133735cd1" [label="/bin/sh -c rpm -Uvh http://yum.postgresql.org/9.4/redhat/rhel-7-x86_64/pgdg-redhat94-9.4-1.noarch.rpm" shape="box"];
  "sha256:03f55d6518f6b8cf4e462a442e00dfadc0bff48afa942fdecdaf49a18e55f8a2" [label="/bin/sh -c yum install -y procps-ng postgresql94 postgresql94-server unzip openssh-clients hostname bind-utils && yum clean all -y" shape="box"];
  "sha256:d165516e590b521cc4c08ce6640bf23921eca285feda92826cb502c1e4daf636" [label="/bin/sh -c mkdir -p /var/cpm/bin" shape="box"];
  "sha256:28dbdddc11ef8a98b861e5df14d6739baea026a0b97abe2bbd39ac0b94eaaf14" [label="/bin/sh -c mkdir -p /var/cpm/conf" shape="box"];
  "sha256:e0d3a546aad37aa17ec39f21bda07b009e103989b8a4f4ed45e58aa7d8b832f9" [label="/bin/sh -c chown -R postgres:postgres /var/cpm" shape="box"];
  "sha256:fe46dd3bc27e9d7a190fcd107bbcdf0adec051310a41c7f1e7ecc378c7c43f96" [label="copy{src=/conf/.bash_profile, dest=/var/lib/pgsql/}" shape="note"];
  "sha256:0cee99538ccd67e34961d11f2e0d562c6037d7601d6f3408e60450eb2370965a" [label="copy{src=/sbin, dest=/var/cpm/bin}" shape="note"];
  "sha256:1c2cc6e0870f4850dde9f25d70c1f185ce2e8e14051c1b94a5130abeb5c6ff04" [label="copy{src=/bin, dest=/var/cpm/bin}" shape="note"];
  "sha256:dd76eedc0668e0e1eabbf5a3044bea581c0f19956538cf6f6b83449f4a6c96d7" [label="/bin/sh -c chown -R postgres:postgres /cpmlogs" shape="box"];
  "sha256:4d81f90eb7cda1703cb2e2d23909b355651612e235bc588dce9875d959ec1034" [label="sha256:4d81f90eb7cda1703cb2e2d23909b355651612e235bc588dce9875d959ec1034" shape="plaintext"];
  "sha256:2fc893a965a1889294ee9c7fcd3af04e80a51e1a82efa2146cb2f4742391c7a7" -> "sha256:677f7856ad4f89e703b418515f05bc256ad746eebb7bdb0843263be36cb032ce" [label=""];
  "sha256:677f7856ad4f89e703b418515f05bc256ad746eebb7bdb0843263be36cb032ce" -> "sha256:5f35e18907a48d7df7b9ce4bad18facf4788e26a83afc0750bc6752133735cd1" [label=""];
  "sha256:5f35e18907a48d7df7b9ce4bad18facf4788e26a83afc0750bc6752133735cd1" -> "sha256:03f55d6518f6b8cf4e462a442e00dfadc0bff48afa942fdecdaf49a18e55f8a2" [label=""];
  "sha256:03f55d6518f6b8cf4e462a442e00dfadc0bff48afa942fdecdaf49a18e55f8a2" -> "sha256:d165516e590b521cc4c08ce6640bf23921eca285feda92826cb502c1e4daf636" [label=""];
  "sha256:d165516e590b521cc4c08ce6640bf23921eca285feda92826cb502c1e4daf636" -> "sha256:28dbdddc11ef8a98b861e5df14d6739baea026a0b97abe2bbd39ac0b94eaaf14" [label=""];
  "sha256:28dbdddc11ef8a98b861e5df14d6739baea026a0b97abe2bbd39ac0b94eaaf14" -> "sha256:e0d3a546aad37aa17ec39f21bda07b009e103989b8a4f4ed45e58aa7d8b832f9" [label=""];
  "sha256:e0d3a546aad37aa17ec39f21bda07b009e103989b8a4f4ed45e58aa7d8b832f9" -> "sha256:fe46dd3bc27e9d7a190fcd107bbcdf0adec051310a41c7f1e7ecc378c7c43f96" [label=""];
  "sha256:3a2d1c63feca20176ca66ca19940fc3ba226d73e10c0462bdf30f36d45c54f9f" -> "sha256:fe46dd3bc27e9d7a190fcd107bbcdf0adec051310a41c7f1e7ecc378c7c43f96" [label=""];
  "sha256:fe46dd3bc27e9d7a190fcd107bbcdf0adec051310a41c7f1e7ecc378c7c43f96" -> "sha256:0cee99538ccd67e34961d11f2e0d562c6037d7601d6f3408e60450eb2370965a" [label=""];
  "sha256:3a2d1c63feca20176ca66ca19940fc3ba226d73e10c0462bdf30f36d45c54f9f" -> "sha256:0cee99538ccd67e34961d11f2e0d562c6037d7601d6f3408e60450eb2370965a" [label=""];
  "sha256:0cee99538ccd67e34961d11f2e0d562c6037d7601d6f3408e60450eb2370965a" -> "sha256:1c2cc6e0870f4850dde9f25d70c1f185ce2e8e14051c1b94a5130abeb5c6ff04" [label=""];
  "sha256:3a2d1c63feca20176ca66ca19940fc3ba226d73e10c0462bdf30f36d45c54f9f" -> "sha256:1c2cc6e0870f4850dde9f25d70c1f185ce2e8e14051c1b94a5130abeb5c6ff04" [label=""];
  "sha256:1c2cc6e0870f4850dde9f25d70c1f185ce2e8e14051c1b94a5130abeb5c6ff04" -> "sha256:dd76eedc0668e0e1eabbf5a3044bea581c0f19956538cf6f6b83449f4a6c96d7" [label=""];
  "sha256:dd76eedc0668e0e1eabbf5a3044bea581c0f19956538cf6f6b83449f4a6c96d7" -> "sha256:4d81f90eb7cda1703cb2e2d23909b355651612e235bc588dce9875d959ec1034" [label=""];
}

