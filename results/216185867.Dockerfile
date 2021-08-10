[app/sources/216185867.Dockerfile]
digraph {
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" [label="docker-image://docker.io/library/ubuntu:14.04" shape="ellipse"];
  "sha256:b79710b662aa299ef7003af879fc44858c22a39320db4732c7a56426db1c6bbb" [label="/bin/sh -c echo hello  world  goodnight    moon  lightning" shape="box"];
  "sha256:d1f175e3dee8395f570805a0b29a677584fef89e6600ef765e04ee25236461fe" [label="/bin/sh -c echo hello    world" shape="box"];
  "sha256:be41c7d17f34f864f37af88d0061df52949a0a17745430394dd3992f2119b545" [label="/bin/sh -c echo hello  world" shape="box"];
  "sha256:1967f72130a633de4e71f2c17c106c9c33ccdaf00c180fe7b535d18b8037b418" [label="/bin/sh -c echo hello goodbyefrog" shape="box"];
  "sha256:6d3f4b7f61fdb847af6c852c5a5bde35e35ac4511986e51cf047d8325f119f5e" [label="/bin/sh -c echo hello  world" shape="box"];
  "sha256:11d90f188a8b5349b975cea559a5e161c7fc61e2d9d4e601d162dd29b127a95e" [label="/bin/sh -c echo hi   world  goodnight" shape="box"];
  "sha256:963345b906f69b94b0ffd84718386be46233abb4b209e7ba356af07120bc7a1b" [label="/bin/sh -c echo goodbyefrog" shape="box"];
  "sha256:86470638fe75b1685e5f00d422c1b4a56fa9e423046545ba12bbc01b60daf851" [label="/bin/sh -c echo goodbyefrog" shape="box"];
  "sha256:c9b165345c63958e9f1df93062819f84be52c7fc548d12d134d23d0ecbd22ca8" [label="/bin/sh -c echo hello this is some more useful stuff" shape="box"];
  "sha256:4944f74516ed71a4e7c1bb36c384f2a9de58423c4e1e1f01c626f756573a5635" [label="sha256:4944f74516ed71a4e7c1bb36c384f2a9de58423c4e1e1f01c626f756573a5635" shape="plaintext"];
  "sha256:a9ab970ef4810de5fde05a4caa66b977b639ff067a8b0241cb81432a2f533c04" -> "sha256:b79710b662aa299ef7003af879fc44858c22a39320db4732c7a56426db1c6bbb" [label=""];
  "sha256:b79710b662aa299ef7003af879fc44858c22a39320db4732c7a56426db1c6bbb" -> "sha256:d1f175e3dee8395f570805a0b29a677584fef89e6600ef765e04ee25236461fe" [label=""];
  "sha256:d1f175e3dee8395f570805a0b29a677584fef89e6600ef765e04ee25236461fe" -> "sha256:be41c7d17f34f864f37af88d0061df52949a0a17745430394dd3992f2119b545" [label=""];
  "sha256:be41c7d17f34f864f37af88d0061df52949a0a17745430394dd3992f2119b545" -> "sha256:1967f72130a633de4e71f2c17c106c9c33ccdaf00c180fe7b535d18b8037b418" [label=""];
  "sha256:1967f72130a633de4e71f2c17c106c9c33ccdaf00c180fe7b535d18b8037b418" -> "sha256:6d3f4b7f61fdb847af6c852c5a5bde35e35ac4511986e51cf047d8325f119f5e" [label=""];
  "sha256:6d3f4b7f61fdb847af6c852c5a5bde35e35ac4511986e51cf047d8325f119f5e" -> "sha256:11d90f188a8b5349b975cea559a5e161c7fc61e2d9d4e601d162dd29b127a95e" [label=""];
  "sha256:11d90f188a8b5349b975cea559a5e161c7fc61e2d9d4e601d162dd29b127a95e" -> "sha256:963345b906f69b94b0ffd84718386be46233abb4b209e7ba356af07120bc7a1b" [label=""];
  "sha256:963345b906f69b94b0ffd84718386be46233abb4b209e7ba356af07120bc7a1b" -> "sha256:86470638fe75b1685e5f00d422c1b4a56fa9e423046545ba12bbc01b60daf851" [label=""];
  "sha256:86470638fe75b1685e5f00d422c1b4a56fa9e423046545ba12bbc01b60daf851" -> "sha256:c9b165345c63958e9f1df93062819f84be52c7fc548d12d134d23d0ecbd22ca8" [label=""];
  "sha256:c9b165345c63958e9f1df93062819f84be52c7fc548d12d134d23d0ecbd22ca8" -> "sha256:4944f74516ed71a4e7c1bb36c384f2a9de58423c4e1e1f01c626f756573a5635" [label=""];
}

