[app/sources/310623551.Dockerfile]
digraph {
  "sha256:cc809e04ee8ee270febcd3b4c35740457915c1c0215ea685750107289fc2d6db" [label="docker-image://docker.io/videoblocks/alpine-laravel:latest" shape="ellipse"];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" [label="local://context" shape="ellipse"];
  "sha256:8e186f82137083adcb6ade8ddf89c46cbefd3b41f452a8b8a8fa0529647f7e18" [label="copy{src=/composer.json, dest=/}" shape="note"];
  "sha256:e5f038d2d599cc74819e8461aa6fdbc0aab25668a6b23ccea068359a3b5c8838" [label="copy{src=/composer.lock, dest=/}" shape="note"];
  "sha256:0efc23715b87eeec9e902715eb47de5f52102794fd1caea568d63c689b3b0cb6" [label="/bin/sh -c composer install --no-progress --no-dev --no-autoloader" shape="box"];
  "sha256:48b0fbafe471b07664224c01186540217de2fcaa721261e9938a5cf6bc0cfee2" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:e54ca6c99ea6c2a882fe1f0ffa9958a9eb09b5941c37bf912f53fe834be313d5" [label="/bin/sh -c composer install --no-progress --no-dev -o" shape="box"];
  "sha256:e3a76fe2afc6f84355434c68eceea647ee3b78644159696e2d4f6262c4d0dd83" [label="/bin/sh -c cp .env.production .env" shape="box"];
  "sha256:5495d5f2df81f471051f7da07510764b668ac035e9e1a276f2b31994e5a1db25" [label="/bin/sh -c chmod -R 777 storage && chmod -R 777 bootstrap/cache" shape="box"];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" [label="docker-image://docker.io/library/node:8" shape="ellipse"];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label="mkdir{path=/app}" shape="note"];
  "sha256:6e45f238be557e4d6f9bf68e30116bb6f3e78b6e875d2790f5afc50671d0a899" [label="copy{src=/package.json, dest=/app/package.json}" shape="note"];
  "sha256:6e514f089a9b8922cdc2bc58ff15bfb8a2afe5cd35ce5860e2a68ff836d375b0" [label="/bin/sh -c yarn" shape="box"];
  "sha256:2fcc16b9f4f3a917e073341f2844851d30d3b1dd9455ca394e52fef29ca82108" [label="copy{src=/resources, dest=/app/resources}" shape="note"];
  "sha256:4349929e72247f4c9a3af2f29e454b9037f35bd10f8043a43ae0dcd5ce77eb10" [label="copy{src=/webpack.mix.js, dest=/app/}" shape="note"];
  "sha256:037961a377bcf87b40138844ed812a675241111ad15120d786f1023c161b4f09" [label="/bin/sh -c yarn run production" shape="box"];
  "sha256:38d0bf1cf931f761feec994976e592a96561de4cff6b91e15e3986d14b5ac46a" [label="copy{src=/app/public/css, dest=/public/css}" shape="note"];
  "sha256:07dff22c5fef422e0646e6a09721aa08777893a60e6fb1513c3f6994f27c5a39" [label="copy{src=/app/public/js, dest=/public/js}" shape="note"];
  "sha256:04eaa9c88ca763225a86fab79e17d091285fdd2f30e163cbf67133b315924214" [label="/bin/sh -c php artisan view:clear" shape="box"];
  "sha256:346380599866ce1fb80285b71b49f0e1f85b2c19fad6fbec77362ff48bce0f2f" [label="/bin/sh -c php artisan key:generate" shape="box"];
  "sha256:bc0e670ff05387ed60752402bf44ead9f814d7c29d633cc26eba0d506d605a13" [label="/bin/sh -c php artisan route:cache" shape="box"];
  "sha256:936906194f9dee479e0e96fade9c16cc21e4b6c900c882d2536f24d19ad80179" [label="/bin/sh -c php artisan config:cache" shape="box"];
  "sha256:a01147941ac53895e60622614ed0f90711608ab0ae56e55d180b93fbc48c2671" [label="sha256:a01147941ac53895e60622614ed0f90711608ab0ae56e55d180b93fbc48c2671" shape="plaintext"];
  "sha256:cc809e04ee8ee270febcd3b4c35740457915c1c0215ea685750107289fc2d6db" -> "sha256:8e186f82137083adcb6ade8ddf89c46cbefd3b41f452a8b8a8fa0529647f7e18" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:8e186f82137083adcb6ade8ddf89c46cbefd3b41f452a8b8a8fa0529647f7e18" [label=""];
  "sha256:8e186f82137083adcb6ade8ddf89c46cbefd3b41f452a8b8a8fa0529647f7e18" -> "sha256:e5f038d2d599cc74819e8461aa6fdbc0aab25668a6b23ccea068359a3b5c8838" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:e5f038d2d599cc74819e8461aa6fdbc0aab25668a6b23ccea068359a3b5c8838" [label=""];
  "sha256:e5f038d2d599cc74819e8461aa6fdbc0aab25668a6b23ccea068359a3b5c8838" -> "sha256:0efc23715b87eeec9e902715eb47de5f52102794fd1caea568d63c689b3b0cb6" [label=""];
  "sha256:0efc23715b87eeec9e902715eb47de5f52102794fd1caea568d63c689b3b0cb6" -> "sha256:48b0fbafe471b07664224c01186540217de2fcaa721261e9938a5cf6bc0cfee2" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:48b0fbafe471b07664224c01186540217de2fcaa721261e9938a5cf6bc0cfee2" [label=""];
  "sha256:48b0fbafe471b07664224c01186540217de2fcaa721261e9938a5cf6bc0cfee2" -> "sha256:e54ca6c99ea6c2a882fe1f0ffa9958a9eb09b5941c37bf912f53fe834be313d5" [label=""];
  "sha256:e54ca6c99ea6c2a882fe1f0ffa9958a9eb09b5941c37bf912f53fe834be313d5" -> "sha256:e3a76fe2afc6f84355434c68eceea647ee3b78644159696e2d4f6262c4d0dd83" [label=""];
  "sha256:e3a76fe2afc6f84355434c68eceea647ee3b78644159696e2d4f6262c4d0dd83" -> "sha256:5495d5f2df81f471051f7da07510764b668ac035e9e1a276f2b31994e5a1db25" [label=""];
  "sha256:299d34d2b3126ad928b79e943b82636836bc9a495c694f0fe851c96bbf1db1f4" -> "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" [label=""];
  "sha256:caa008061838b4e4d24e5a1a238580b2d2c0cd37ae4dc2602831bf7498da0386" -> "sha256:6e45f238be557e4d6f9bf68e30116bb6f3e78b6e875d2790f5afc50671d0a899" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:6e45f238be557e4d6f9bf68e30116bb6f3e78b6e875d2790f5afc50671d0a899" [label=""];
  "sha256:6e45f238be557e4d6f9bf68e30116bb6f3e78b6e875d2790f5afc50671d0a899" -> "sha256:6e514f089a9b8922cdc2bc58ff15bfb8a2afe5cd35ce5860e2a68ff836d375b0" [label=""];
  "sha256:6e514f089a9b8922cdc2bc58ff15bfb8a2afe5cd35ce5860e2a68ff836d375b0" -> "sha256:2fcc16b9f4f3a917e073341f2844851d30d3b1dd9455ca394e52fef29ca82108" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:2fcc16b9f4f3a917e073341f2844851d30d3b1dd9455ca394e52fef29ca82108" [label=""];
  "sha256:2fcc16b9f4f3a917e073341f2844851d30d3b1dd9455ca394e52fef29ca82108" -> "sha256:4349929e72247f4c9a3af2f29e454b9037f35bd10f8043a43ae0dcd5ce77eb10" [label=""];
  "sha256:379c426cca17a29a1b07755ecd4687bce3e55c4f301b1a6815d6584ce15d09ff" -> "sha256:4349929e72247f4c9a3af2f29e454b9037f35bd10f8043a43ae0dcd5ce77eb10" [label=""];
  "sha256:4349929e72247f4c9a3af2f29e454b9037f35bd10f8043a43ae0dcd5ce77eb10" -> "sha256:037961a377bcf87b40138844ed812a675241111ad15120d786f1023c161b4f09" [label=""];
  "sha256:5495d5f2df81f471051f7da07510764b668ac035e9e1a276f2b31994e5a1db25" -> "sha256:38d0bf1cf931f761feec994976e592a96561de4cff6b91e15e3986d14b5ac46a" [label=""];
  "sha256:037961a377bcf87b40138844ed812a675241111ad15120d786f1023c161b4f09" -> "sha256:38d0bf1cf931f761feec994976e592a96561de4cff6b91e15e3986d14b5ac46a" [label=""];
  "sha256:38d0bf1cf931f761feec994976e592a96561de4cff6b91e15e3986d14b5ac46a" -> "sha256:07dff22c5fef422e0646e6a09721aa08777893a60e6fb1513c3f6994f27c5a39" [label=""];
  "sha256:037961a377bcf87b40138844ed812a675241111ad15120d786f1023c161b4f09" -> "sha256:07dff22c5fef422e0646e6a09721aa08777893a60e6fb1513c3f6994f27c5a39" [label=""];
  "sha256:07dff22c5fef422e0646e6a09721aa08777893a60e6fb1513c3f6994f27c5a39" -> "sha256:04eaa9c88ca763225a86fab79e17d091285fdd2f30e163cbf67133b315924214" [label=""];
  "sha256:04eaa9c88ca763225a86fab79e17d091285fdd2f30e163cbf67133b315924214" -> "sha256:346380599866ce1fb80285b71b49f0e1f85b2c19fad6fbec77362ff48bce0f2f" [label=""];
  "sha256:346380599866ce1fb80285b71b49f0e1f85b2c19fad6fbec77362ff48bce0f2f" -> "sha256:bc0e670ff05387ed60752402bf44ead9f814d7c29d633cc26eba0d506d605a13" [label=""];
  "sha256:bc0e670ff05387ed60752402bf44ead9f814d7c29d633cc26eba0d506d605a13" -> "sha256:936906194f9dee479e0e96fade9c16cc21e4b6c900c882d2536f24d19ad80179" [label=""];
  "sha256:936906194f9dee479e0e96fade9c16cc21e4b6c900c882d2536f24d19ad80179" -> "sha256:a01147941ac53895e60622614ed0f90711608ab0ae56e55d180b93fbc48c2671" [label=""];
}

