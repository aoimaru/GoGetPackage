[app/sources/241264506.Dockerfile]
digraph {
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" [label="docker-image://docker.io/library/python:3.6" shape="ellipse"];
  "sha256:bbe084de4b4e1610aa1d7bdedc75ca2364d37b3961bb650651940a779efc7c5b" [label="local://context" shape="ellipse"];
  "sha256:6d425cfaebafb53d02348f603efd3721beedf2eac7a934e807385b3d682ba7bc" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:93a09f73b34d9fdc582893aaf1710df3c29db065bbac9622df717e486145275b" [label="/bin/sh -c pip3 install git+https://github.com/Typhon66/sanic_crud.git" shape="box"];
  "sha256:e10a3d42377a2112b16f4f4eef0b6dc638487336e96d4ba52ef3251b625c4f4c" [label="mkdir{path=/code}" shape="note"];
  "sha256:c7e571abb50e15f63f0cc2cc2799fe99b1b17a3dc4506b83da9c31101b31751f" [label="sha256:c7e571abb50e15f63f0cc2cc2799fe99b1b17a3dc4506b83da9c31101b31751f" shape="plaintext"];
  "sha256:0bbe7a7f775257c810ebcd36361326abae8c24523729fefbcbc748474cfc163b" -> "sha256:6d425cfaebafb53d02348f603efd3721beedf2eac7a934e807385b3d682ba7bc" [label=""];
  "sha256:bbe084de4b4e1610aa1d7bdedc75ca2364d37b3961bb650651940a779efc7c5b" -> "sha256:6d425cfaebafb53d02348f603efd3721beedf2eac7a934e807385b3d682ba7bc" [label=""];
  "sha256:6d425cfaebafb53d02348f603efd3721beedf2eac7a934e807385b3d682ba7bc" -> "sha256:93a09f73b34d9fdc582893aaf1710df3c29db065bbac9622df717e486145275b" [label=""];
  "sha256:93a09f73b34d9fdc582893aaf1710df3c29db065bbac9622df717e486145275b" -> "sha256:e10a3d42377a2112b16f4f4eef0b6dc638487336e96d4ba52ef3251b625c4f4c" [label=""];
  "sha256:e10a3d42377a2112b16f4f4eef0b6dc638487336e96d4ba52ef3251b625c4f4c" -> "sha256:c7e571abb50e15f63f0cc2cc2799fe99b1b17a3dc4506b83da9c31101b31751f" [label=""];
}

