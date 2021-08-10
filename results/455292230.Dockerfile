[app/sources/455292230.Dockerfile]
digraph {
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" [label="local://context" shape="ellipse"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" [label="docker-image://docker.io/library/ubuntu:18.04" shape="ellipse"];
  "sha256:6a0d49f943cf5738d5124cd6fce63f24cde03d47cfe1ab46539b4744052d6f0d" [label="/bin/sh -c apt-get clean && apt-get --fix-missing update" shape="box"];
  "sha256:0f8e6f9efc432cb3962fbdfa2fbfa36bfd7604dc6abb8c555cd4c2677a506f78" [label="/bin/sh -c apt-get update && apt-get install -y python3-pip" shape="box"];
  "sha256:7acf4ea7a5e129bbb8a22b6024c9afff76e777ad818e23d6ed51d4fa634ae75c" [label="/bin/sh -c apt-get update && apt-get install -y build-essential libssl-dev libffi-dev python3-dev" shape="box"];
  "sha256:7eb2220cd184a876ad7e21a3c50688fb83628c7067c07ab9b776a328bba1a5a6" [label="/bin/sh -c apt-get update && apt-get install -y git ntp psmisc python3-pytest" shape="box"];
  "sha256:c645be14a9319d15e22cf98577b5d302a0d4046c881c66b939375a0d725e0533" [label="mkdir{path=/usr/local/src}" shape="note"];
  "sha256:ac58921c13db4d55bab9820473ebdbdf9b3fc676a430b5aae26e29074ddbbf34" [label="/bin/sh -c git clone https://github.com/openid-certification/otest.git" shape="box"];
  "sha256:aa87fd7c5c8835824204a039bba539353fc7e915fd7676786531428294cc9901" [label="/bin/sh -c cd otest && python3 setup.py install && cd -" shape="box"];
  "sha256:dd5e428fc8f97957e548e4d703f593394f79db63529b11f6d763ab9f483cde87" [label="/bin/sh -c mkdir oidctest" shape="box"];
  "sha256:92ab405c8bdaa36f8a49d1a483c76f917a837ed9cd229c80a46a8bb2cb2d38ea" [label="copy{src=/, dest=/usr/local/src/oidctest/}" shape="note"];
  "sha256:8d0ed58f4c24666f62f44d930073fc8e4b713de4410908d4f69533bc69ce608b" [label="/bin/sh -c cd oidctest && python3 setup.py install && cd -" shape="box"];
  "sha256:e1984d65f5ffb0c73a166d569203e31cad5f70117e1cf322d9e8aa1ef1d3e4d9" [label="/bin/sh -c cd oidctest/tests && python3 -m pytest -x && cd -" shape="box"];
  "sha256:d88259a8e1805e890542ca4529a84cf1bc1bd7edac4bff97f4a1a4d31295bd29" [label="/bin/sh -c oidc_setup.py ${SRCDIR}/oidctest ${INSTDIR}" shape="box"];
  "sha256:95e2c71ea7a84a34dc292cb3ee0449b97a54355b11fdfcd8b6f20a7a031a9669" [label="copy{src=/docker/rp_test/cert.pem, dest=/usr/local/src/oidf/oidc_cp_rplib/certs/}" shape="note"];
  "sha256:63224b695b567ad726c21bb023c2c55fa319af7ee9c49a6657ae1781a93c2c1c" [label="copy{src=/docker/rp_test/key.pem, dest=/usr/local/src/oidf/oidc_cp_rplib/certs/}" shape="note"];
  "sha256:4e2dd84ebc42119a91b724252b2134f32983b01583e3cb19fc2fcb352648d54b" [label="copy{src=/docker/rp_test/conf.py, dest=/usr/local/src/oidf/oidc_cp_rplib/}" shape="note"];
  "sha256:1b6e50a8b515aa9f929a549ab549b6275b019a30859fefdf99359dcff35a3ead" [label="copy{src=/docker/rp_test/run.sh, dest=/usr/local/src/oidf/oidc_cp_rplib/}" shape="note"];
  "sha256:b82f364b85b366bbca45ae0de493fe73d3078ba8d9d37ab40907a07e8060847d" [label="mkdir{path=/usr/local/src/oidf/oidc_cp_rplib}" shape="note"];
  "sha256:e3750bad436279a477c8ba3c0480499f9f9ac2802d9e454e962516d606f4844e" [label="sha256:e3750bad436279a477c8ba3c0480499f9f9ac2802d9e454e962516d606f4844e" shape="plaintext"];
  "sha256:5e691c7ba4998fa4b60d1218bbc4ed9845bfa527d7d91b0c48922bbea45ce425" -> "sha256:6a0d49f943cf5738d5124cd6fce63f24cde03d47cfe1ab46539b4744052d6f0d" [label=""];
  "sha256:6a0d49f943cf5738d5124cd6fce63f24cde03d47cfe1ab46539b4744052d6f0d" -> "sha256:0f8e6f9efc432cb3962fbdfa2fbfa36bfd7604dc6abb8c555cd4c2677a506f78" [label=""];
  "sha256:0f8e6f9efc432cb3962fbdfa2fbfa36bfd7604dc6abb8c555cd4c2677a506f78" -> "sha256:7acf4ea7a5e129bbb8a22b6024c9afff76e777ad818e23d6ed51d4fa634ae75c" [label=""];
  "sha256:7acf4ea7a5e129bbb8a22b6024c9afff76e777ad818e23d6ed51d4fa634ae75c" -> "sha256:7eb2220cd184a876ad7e21a3c50688fb83628c7067c07ab9b776a328bba1a5a6" [label=""];
  "sha256:7eb2220cd184a876ad7e21a3c50688fb83628c7067c07ab9b776a328bba1a5a6" -> "sha256:c645be14a9319d15e22cf98577b5d302a0d4046c881c66b939375a0d725e0533" [label=""];
  "sha256:c645be14a9319d15e22cf98577b5d302a0d4046c881c66b939375a0d725e0533" -> "sha256:ac58921c13db4d55bab9820473ebdbdf9b3fc676a430b5aae26e29074ddbbf34" [label=""];
  "sha256:ac58921c13db4d55bab9820473ebdbdf9b3fc676a430b5aae26e29074ddbbf34" -> "sha256:aa87fd7c5c8835824204a039bba539353fc7e915fd7676786531428294cc9901" [label=""];
  "sha256:aa87fd7c5c8835824204a039bba539353fc7e915fd7676786531428294cc9901" -> "sha256:dd5e428fc8f97957e548e4d703f593394f79db63529b11f6d763ab9f483cde87" [label=""];
  "sha256:dd5e428fc8f97957e548e4d703f593394f79db63529b11f6d763ab9f483cde87" -> "sha256:92ab405c8bdaa36f8a49d1a483c76f917a837ed9cd229c80a46a8bb2cb2d38ea" [label=""];
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" -> "sha256:92ab405c8bdaa36f8a49d1a483c76f917a837ed9cd229c80a46a8bb2cb2d38ea" [label=""];
  "sha256:92ab405c8bdaa36f8a49d1a483c76f917a837ed9cd229c80a46a8bb2cb2d38ea" -> "sha256:8d0ed58f4c24666f62f44d930073fc8e4b713de4410908d4f69533bc69ce608b" [label=""];
  "sha256:8d0ed58f4c24666f62f44d930073fc8e4b713de4410908d4f69533bc69ce608b" -> "sha256:e1984d65f5ffb0c73a166d569203e31cad5f70117e1cf322d9e8aa1ef1d3e4d9" [label=""];
  "sha256:e1984d65f5ffb0c73a166d569203e31cad5f70117e1cf322d9e8aa1ef1d3e4d9" -> "sha256:d88259a8e1805e890542ca4529a84cf1bc1bd7edac4bff97f4a1a4d31295bd29" [label=""];
  "sha256:d88259a8e1805e890542ca4529a84cf1bc1bd7edac4bff97f4a1a4d31295bd29" -> "sha256:95e2c71ea7a84a34dc292cb3ee0449b97a54355b11fdfcd8b6f20a7a031a9669" [label=""];
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" -> "sha256:95e2c71ea7a84a34dc292cb3ee0449b97a54355b11fdfcd8b6f20a7a031a9669" [label=""];
  "sha256:95e2c71ea7a84a34dc292cb3ee0449b97a54355b11fdfcd8b6f20a7a031a9669" -> "sha256:63224b695b567ad726c21bb023c2c55fa319af7ee9c49a6657ae1781a93c2c1c" [label=""];
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" -> "sha256:63224b695b567ad726c21bb023c2c55fa319af7ee9c49a6657ae1781a93c2c1c" [label=""];
  "sha256:63224b695b567ad726c21bb023c2c55fa319af7ee9c49a6657ae1781a93c2c1c" -> "sha256:4e2dd84ebc42119a91b724252b2134f32983b01583e3cb19fc2fcb352648d54b" [label=""];
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" -> "sha256:4e2dd84ebc42119a91b724252b2134f32983b01583e3cb19fc2fcb352648d54b" [label=""];
  "sha256:4e2dd84ebc42119a91b724252b2134f32983b01583e3cb19fc2fcb352648d54b" -> "sha256:1b6e50a8b515aa9f929a549ab549b6275b019a30859fefdf99359dcff35a3ead" [label=""];
  "sha256:3a71bd8a5bbcf0cab7d08bac4d53794672c6cfe26fe451d9038b2d63337cddb8" -> "sha256:1b6e50a8b515aa9f929a549ab549b6275b019a30859fefdf99359dcff35a3ead" [label=""];
  "sha256:1b6e50a8b515aa9f929a549ab549b6275b019a30859fefdf99359dcff35a3ead" -> "sha256:b82f364b85b366bbca45ae0de493fe73d3078ba8d9d37ab40907a07e8060847d" [label=""];
  "sha256:b82f364b85b366bbca45ae0de493fe73d3078ba8d9d37ab40907a07e8060847d" -> "sha256:e3750bad436279a477c8ba3c0480499f9f9ac2802d9e454e962516d606f4844e" [label=""];
}

