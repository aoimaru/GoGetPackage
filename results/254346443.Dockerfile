[app/sources/254346443.Dockerfile]
digraph {
  "sha256:c9b2eb89ea85a4442a01bbd63268800eccdbc37808b1e84cb7a050249d777071" [label="local://context" shape="ellipse"];
  "sha256:0023d4fd5de6d77faa5816a76df8a3e0f08d89e26c2fb7c98a046446033cd306" [label="docker-image://docker.io/library/ruby:2.6-alpine3.8" shape="ellipse"];
  "sha256:04bf56381cbbe1e82db6306eb17fc9e3c317174a6fedbac97fff61c15789ccc2" [label="/bin/sh -c apk update && apk add --no-cache build-base git nodejs-npm" shape="box"];
  "sha256:68bbc597202e1ecc7053225bd21837f3ff129a94f6beff3caa5a9cef7203a871" [label="/bin/sh -c gem update bundler" shape="box"];
  "sha256:02860037aac186527083fa854b549fc793e335fd50fa1ba8f0cfa8cb0805ecc1" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:3db462af182af04bc772034f720f9d77d18fc56ded6f37f083ad3d8eae1d21a9" [label="mkdir{path=/app}" shape="note"];
  "sha256:57c3ed6b5aa6e4ded28ae113be4b7c9e0bfc0aac6ece65d2c32575730abaa562" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/},copy{src=/package.json, dest=/app/}" shape="note"];
  "sha256:120e7b27d4c63681f82c26cfdb40b26590814ce5e0611bea98629ea62fcb3b0e" [label="/bin/sh -c bundle install -j 4 &&     npm install" shape="box"];
  "sha256:af427f7cd193351cacb145995c31c895ce2bd3992717b996a3c2813a4caf44d1" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:e1816370d23f5cf4cd85f17bce06d5b374b1d020dfc02d3ce4aced6871e2c757" [label="sha256:e1816370d23f5cf4cd85f17bce06d5b374b1d020dfc02d3ce4aced6871e2c757" shape="plaintext"];
  "sha256:0023d4fd5de6d77faa5816a76df8a3e0f08d89e26c2fb7c98a046446033cd306" -> "sha256:04bf56381cbbe1e82db6306eb17fc9e3c317174a6fedbac97fff61c15789ccc2" [label=""];
  "sha256:04bf56381cbbe1e82db6306eb17fc9e3c317174a6fedbac97fff61c15789ccc2" -> "sha256:68bbc597202e1ecc7053225bd21837f3ff129a94f6beff3caa5a9cef7203a871" [label=""];
  "sha256:68bbc597202e1ecc7053225bd21837f3ff129a94f6beff3caa5a9cef7203a871" -> "sha256:02860037aac186527083fa854b549fc793e335fd50fa1ba8f0cfa8cb0805ecc1" [label=""];
  "sha256:02860037aac186527083fa854b549fc793e335fd50fa1ba8f0cfa8cb0805ecc1" -> "sha256:3db462af182af04bc772034f720f9d77d18fc56ded6f37f083ad3d8eae1d21a9" [label=""];
  "sha256:3db462af182af04bc772034f720f9d77d18fc56ded6f37f083ad3d8eae1d21a9" -> "sha256:57c3ed6b5aa6e4ded28ae113be4b7c9e0bfc0aac6ece65d2c32575730abaa562" [label=""];
  "sha256:c9b2eb89ea85a4442a01bbd63268800eccdbc37808b1e84cb7a050249d777071" -> "sha256:57c3ed6b5aa6e4ded28ae113be4b7c9e0bfc0aac6ece65d2c32575730abaa562" [label=""];
  "sha256:57c3ed6b5aa6e4ded28ae113be4b7c9e0bfc0aac6ece65d2c32575730abaa562" -> "sha256:120e7b27d4c63681f82c26cfdb40b26590814ce5e0611bea98629ea62fcb3b0e" [label=""];
  "sha256:120e7b27d4c63681f82c26cfdb40b26590814ce5e0611bea98629ea62fcb3b0e" -> "sha256:af427f7cd193351cacb145995c31c895ce2bd3992717b996a3c2813a4caf44d1" [label=""];
  "sha256:c9b2eb89ea85a4442a01bbd63268800eccdbc37808b1e84cb7a050249d777071" -> "sha256:af427f7cd193351cacb145995c31c895ce2bd3992717b996a3c2813a4caf44d1" [label=""];
  "sha256:af427f7cd193351cacb145995c31c895ce2bd3992717b996a3c2813a4caf44d1" -> "sha256:e1816370d23f5cf4cd85f17bce06d5b374b1d020dfc02d3ce4aced6871e2c757" [label=""];
}

