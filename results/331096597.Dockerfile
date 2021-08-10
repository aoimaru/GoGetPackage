[app/sources/331096597.Dockerfile]
digraph {
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" [label="local://context" shape="ellipse"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:db0a84123e76c59cf7563144b382bb15622fef7ab86ba36f7c3b311a1bf4cf74" [label="copy{src=/, dest=/go/src/github.com/docker/docker}" shape="note"];
  "sha256:ccbc520fb0616abde2f5b7709612a57514e67d2d51dfbc44cda631c6735cead4" [label="copy{src=/, dest=/}" shape="note"];
  "sha256:4bdb4c1c8eadf1401ad35e6e43796fa04c996b897e5130fcc742c106c2d819bb" [label="copy{src=/null, dest=/}" shape="note"];
  "sha256:efb762f1798335fa9dbcdde2518fa9b06ae89951a70dd7675fa0ce6730c043da" [label="copy{src=/nullfile, dest=/tmp}" shape="note"];
  "sha256:1a8902205f6e6008fbcad0760305a2b296fa33c562aa09422578c91cdb1e2cc1" [label="copy{src=/vimrc, dest=/tmp}" shape="note"];
  "sha256:2231b42e53ce6136b5b074f445fbc0760468ec086cdce92d6a97cb854b6c27e0" [label="copy{src=/bashrc, dest=/tmp}" shape="note"];
  "sha256:0c27a682db3842097e126637368361d069e74ea2f12d9b5f7b9753aaf37ed229" [label="copy{src=/test file, dest=/tmp}" shape="note"];
  "sha256:ac1893006060746b246d01c6a101bcb80b1213f00917e1d83569f35cd335dcf4" [label="copy{src=/test file, dest=/tmp/test file}" shape="note"];
  "sha256:c8b4f4549b9c9a1058cf0e6739e2ea8d2f0819db324d776ead428013a97cb8bc" [label="sha256:c8b4f4549b9c9a1058cf0e6739e2ea8d2f0819db324d776ead428013a97cb8bc" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:db0a84123e76c59cf7563144b382bb15622fef7ab86ba36f7c3b311a1bf4cf74" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:db0a84123e76c59cf7563144b382bb15622fef7ab86ba36f7c3b311a1bf4cf74" [label=""];
  "sha256:db0a84123e76c59cf7563144b382bb15622fef7ab86ba36f7c3b311a1bf4cf74" -> "sha256:ccbc520fb0616abde2f5b7709612a57514e67d2d51dfbc44cda631c6735cead4" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:ccbc520fb0616abde2f5b7709612a57514e67d2d51dfbc44cda631c6735cead4" [label=""];
  "sha256:ccbc520fb0616abde2f5b7709612a57514e67d2d51dfbc44cda631c6735cead4" -> "sha256:4bdb4c1c8eadf1401ad35e6e43796fa04c996b897e5130fcc742c106c2d819bb" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:4bdb4c1c8eadf1401ad35e6e43796fa04c996b897e5130fcc742c106c2d819bb" [label=""];
  "sha256:4bdb4c1c8eadf1401ad35e6e43796fa04c996b897e5130fcc742c106c2d819bb" -> "sha256:efb762f1798335fa9dbcdde2518fa9b06ae89951a70dd7675fa0ce6730c043da" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:efb762f1798335fa9dbcdde2518fa9b06ae89951a70dd7675fa0ce6730c043da" [label=""];
  "sha256:efb762f1798335fa9dbcdde2518fa9b06ae89951a70dd7675fa0ce6730c043da" -> "sha256:1a8902205f6e6008fbcad0760305a2b296fa33c562aa09422578c91cdb1e2cc1" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:1a8902205f6e6008fbcad0760305a2b296fa33c562aa09422578c91cdb1e2cc1" [label=""];
  "sha256:1a8902205f6e6008fbcad0760305a2b296fa33c562aa09422578c91cdb1e2cc1" -> "sha256:2231b42e53ce6136b5b074f445fbc0760468ec086cdce92d6a97cb854b6c27e0" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:2231b42e53ce6136b5b074f445fbc0760468ec086cdce92d6a97cb854b6c27e0" [label=""];
  "sha256:2231b42e53ce6136b5b074f445fbc0760468ec086cdce92d6a97cb854b6c27e0" -> "sha256:0c27a682db3842097e126637368361d069e74ea2f12d9b5f7b9753aaf37ed229" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:0c27a682db3842097e126637368361d069e74ea2f12d9b5f7b9753aaf37ed229" [label=""];
  "sha256:0c27a682db3842097e126637368361d069e74ea2f12d9b5f7b9753aaf37ed229" -> "sha256:ac1893006060746b246d01c6a101bcb80b1213f00917e1d83569f35cd335dcf4" [label=""];
  "sha256:f83181b8dc9db50d9772d4b6e49756d9a2787080036496b5316261196a1a3b76" -> "sha256:ac1893006060746b246d01c6a101bcb80b1213f00917e1d83569f35cd335dcf4" [label=""];
  "sha256:ac1893006060746b246d01c6a101bcb80b1213f00917e1d83569f35cd335dcf4" -> "sha256:c8b4f4549b9c9a1058cf0e6739e2ea8d2f0819db324d776ead428013a97cb8bc" [label=""];
}
