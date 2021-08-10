[app/sources/348080091.Dockerfile]
digraph {
  "sha256:843688427f5f22c4d219f94d5d1439bbf95b803ae454c1dbfa2ae5c04b54ee92" [label="docker-image://docker.io/opennsm/debian@sha256:a83a9b8c3dc3f688148f4094eaa5f78a200d130d66f3bf2f224dcfd800ead893" shape="ellipse"];
  "sha256:fb7fe3c150ac0acd37619d359f283631d2910b0394eab894cf3ac870cf890c48" [label="/bin/sh -c apt-get update -y" shape="box"];
  "sha256:9534a28be185e1bc26a79d7b47e78a0419254aee00e1c7b607b884a8541d59bd" [label="/bin/sh -c apt-get install -y python python-urwid --no-install-recommends" shape="box"];
  "sha256:9ee5c679eb9adfa2d657701b52bd68ba0a9a6bf665e5ac71fd19275d2086b36a" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:e23f35e01bbdd5f33cbdb04d5919cc82b049c1f282592fce32ba0e9687d75f75" [label="/bin/sh -c git clone https://github.com/wardi/speedometer" shape="box"];
  "sha256:6986cedb87b7d12ca96fcb0e204f4e42efb156c234ba46e71ad4fa7008f1daf7" [label="mkdir{path=/home/opennsm/speedometer}" shape="note"];
  "sha256:23d599d0dcc21f0b48771a0edda5eca06953a7dad062f12d5b76d82a0c763e38" [label="/bin/sh -c git checkout release-$VERS" shape="box"];
  "sha256:98a6ce8a7335c0fa1a2c2c6a321f5ffdfc58c46806627cbc5bf5bb7c2d33ef63" [label="mkdir{path=/home/opennsm/speedometer}" shape="note"];
  "sha256:03360a92b0cf8dfe75efd99e31a90fee8dde1eff8fc03684d9c2c1bb8e50463d" [label="/bin/sh -c cp speedometer.py /usr/local/bin/speedometer" shape="box"];
  "sha256:a48eccccb2358b5ddcd2407007355ab98538d693f0bad482a019938870b89a42" [label="mkdir{path=/home/opennsm}" shape="note"];
  "sha256:55bf191ec76074c88db16dd716ac2dcc559525515f8db172863d802fb16a6db0" [label="sha256:55bf191ec76074c88db16dd716ac2dcc559525515f8db172863d802fb16a6db0" shape="plaintext"];
  "sha256:843688427f5f22c4d219f94d5d1439bbf95b803ae454c1dbfa2ae5c04b54ee92" -> "sha256:fb7fe3c150ac0acd37619d359f283631d2910b0394eab894cf3ac870cf890c48" [label=""];
  "sha256:fb7fe3c150ac0acd37619d359f283631d2910b0394eab894cf3ac870cf890c48" -> "sha256:9534a28be185e1bc26a79d7b47e78a0419254aee00e1c7b607b884a8541d59bd" [label=""];
  "sha256:9534a28be185e1bc26a79d7b47e78a0419254aee00e1c7b607b884a8541d59bd" -> "sha256:9ee5c679eb9adfa2d657701b52bd68ba0a9a6bf665e5ac71fd19275d2086b36a" [label=""];
  "sha256:9ee5c679eb9adfa2d657701b52bd68ba0a9a6bf665e5ac71fd19275d2086b36a" -> "sha256:e23f35e01bbdd5f33cbdb04d5919cc82b049c1f282592fce32ba0e9687d75f75" [label=""];
  "sha256:e23f35e01bbdd5f33cbdb04d5919cc82b049c1f282592fce32ba0e9687d75f75" -> "sha256:6986cedb87b7d12ca96fcb0e204f4e42efb156c234ba46e71ad4fa7008f1daf7" [label=""];
  "sha256:6986cedb87b7d12ca96fcb0e204f4e42efb156c234ba46e71ad4fa7008f1daf7" -> "sha256:23d599d0dcc21f0b48771a0edda5eca06953a7dad062f12d5b76d82a0c763e38" [label=""];
  "sha256:23d599d0dcc21f0b48771a0edda5eca06953a7dad062f12d5b76d82a0c763e38" -> "sha256:98a6ce8a7335c0fa1a2c2c6a321f5ffdfc58c46806627cbc5bf5bb7c2d33ef63" [label=""];
  "sha256:98a6ce8a7335c0fa1a2c2c6a321f5ffdfc58c46806627cbc5bf5bb7c2d33ef63" -> "sha256:03360a92b0cf8dfe75efd99e31a90fee8dde1eff8fc03684d9c2c1bb8e50463d" [label=""];
  "sha256:03360a92b0cf8dfe75efd99e31a90fee8dde1eff8fc03684d9c2c1bb8e50463d" -> "sha256:a48eccccb2358b5ddcd2407007355ab98538d693f0bad482a019938870b89a42" [label=""];
  "sha256:a48eccccb2358b5ddcd2407007355ab98538d693f0bad482a019938870b89a42" -> "sha256:55bf191ec76074c88db16dd716ac2dcc559525515f8db172863d802fb16a6db0" [label=""];
}

