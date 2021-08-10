[app/sources/367439947.Dockerfile]
digraph {
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" [label="local://context" shape="ellipse"];
  "sha256:e670d118a4068696f8e0f79e946fa6e93a27a6f7ff828a378309e5ef1c19e7db" [label="docker-image://docker.io/library/ruby@sha256:3dbe82eca4730c28fe42929470249ec412ccf17405eaf55efa6427b9d6c171de" shape="ellipse"];
  "sha256:c84ed7fc1ef693ae52c757e66bc56c0e44baabb7087c46ffc1551e7ecb7bdbb7" [label="/bin/sh -c apt-get update -qq && apt-get install -y build-essential libpq-dev" shape="box"];
  "sha256:aa888e50f6568f8685ea619c8a1bbd8e29af8b0f7dea52e2e271af26210ca867" [label="/bin/sh -c mkdir /api" shape="box"];
  "sha256:6bbfe0a13e72f44c46e55b94e828ac248dbd2603f4252bdd78713d86bf22e100" [label="mkdir{path=/api}" shape="note"];
  "sha256:acb8dafa0da122ddc3d637d21a27e8f7c757b877f725185d91e3a48033c98765" [label="copy{src=/api/Gemfile, dest=/api/Gemfile}" shape="note"];
  "sha256:8644ca66be9da7efbe64cb929b0dcc519f22da1570da75151dbfa0ccf751a9de" [label="copy{src=/api/Gemfile.lock, dest=/api/Gemfile.lock}" shape="note"];
  "sha256:eec927714cc2d81685b4fc684c65ccecc1b44b5e4654f31ff0a1e84c48533de7" [label="/bin/sh -c bundle install" shape="box"];
  "sha256:154d8c8cd6423a490b1f95f60b0b4b996fbb1f87f7c5ba6ed091459069449fcb" [label="copy{src=/api, dest=/api}" shape="note"];
  "sha256:b038c5139b19fada7b5ac6189cd9171b9b299e5cf2aa02c18433493c8dbba6d8" [label="copy{src=/docker/dev, dest=/docker}" shape="note"];
  "sha256:b4674831731511684d34191a1c182e06c948b414f26edc347775b6a5758d66e5" [label="copy{src=/.git, dest=/.git}" shape="note"];
  "sha256:a3d3a7797f67528303732cdb266ea528d3e990aac234daf10ddc254bfca42a7f" [label="sha256:a3d3a7797f67528303732cdb266ea528d3e990aac234daf10ddc254bfca42a7f" shape="plaintext"];
  "sha256:e670d118a4068696f8e0f79e946fa6e93a27a6f7ff828a378309e5ef1c19e7db" -> "sha256:c84ed7fc1ef693ae52c757e66bc56c0e44baabb7087c46ffc1551e7ecb7bdbb7" [label=""];
  "sha256:c84ed7fc1ef693ae52c757e66bc56c0e44baabb7087c46ffc1551e7ecb7bdbb7" -> "sha256:aa888e50f6568f8685ea619c8a1bbd8e29af8b0f7dea52e2e271af26210ca867" [label=""];
  "sha256:aa888e50f6568f8685ea619c8a1bbd8e29af8b0f7dea52e2e271af26210ca867" -> "sha256:6bbfe0a13e72f44c46e55b94e828ac248dbd2603f4252bdd78713d86bf22e100" [label=""];
  "sha256:6bbfe0a13e72f44c46e55b94e828ac248dbd2603f4252bdd78713d86bf22e100" -> "sha256:acb8dafa0da122ddc3d637d21a27e8f7c757b877f725185d91e3a48033c98765" [label=""];
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" -> "sha256:acb8dafa0da122ddc3d637d21a27e8f7c757b877f725185d91e3a48033c98765" [label=""];
  "sha256:acb8dafa0da122ddc3d637d21a27e8f7c757b877f725185d91e3a48033c98765" -> "sha256:8644ca66be9da7efbe64cb929b0dcc519f22da1570da75151dbfa0ccf751a9de" [label=""];
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" -> "sha256:8644ca66be9da7efbe64cb929b0dcc519f22da1570da75151dbfa0ccf751a9de" [label=""];
  "sha256:8644ca66be9da7efbe64cb929b0dcc519f22da1570da75151dbfa0ccf751a9de" -> "sha256:eec927714cc2d81685b4fc684c65ccecc1b44b5e4654f31ff0a1e84c48533de7" [label=""];
  "sha256:eec927714cc2d81685b4fc684c65ccecc1b44b5e4654f31ff0a1e84c48533de7" -> "sha256:154d8c8cd6423a490b1f95f60b0b4b996fbb1f87f7c5ba6ed091459069449fcb" [label=""];
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" -> "sha256:154d8c8cd6423a490b1f95f60b0b4b996fbb1f87f7c5ba6ed091459069449fcb" [label=""];
  "sha256:154d8c8cd6423a490b1f95f60b0b4b996fbb1f87f7c5ba6ed091459069449fcb" -> "sha256:b038c5139b19fada7b5ac6189cd9171b9b299e5cf2aa02c18433493c8dbba6d8" [label=""];
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" -> "sha256:b038c5139b19fada7b5ac6189cd9171b9b299e5cf2aa02c18433493c8dbba6d8" [label=""];
  "sha256:b038c5139b19fada7b5ac6189cd9171b9b299e5cf2aa02c18433493c8dbba6d8" -> "sha256:b4674831731511684d34191a1c182e06c948b414f26edc347775b6a5758d66e5" [label=""];
  "sha256:5a460145ed2c207382f688d656746cacbdc7c7101b16cd98b2fcc065385dc96a" -> "sha256:b4674831731511684d34191a1c182e06c948b414f26edc347775b6a5758d66e5" [label=""];
  "sha256:b4674831731511684d34191a1c182e06c948b414f26edc347775b6a5758d66e5" -> "sha256:a3d3a7797f67528303732cdb266ea528d3e990aac234daf10ddc254bfca42a7f" [label=""];
}

