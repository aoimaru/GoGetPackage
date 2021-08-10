[app/sources/284068742.Dockerfile]
digraph {
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:254ff79394214272a3810c2b98da7fa5b310f9d542dad482bed0b938d84a469f" [label="/bin/sh -c apt-get update     && apt-get install -y --no-install-recommends         postgresql-client     && rm -rf /var/lib/apt/lists/*" shape="box"];
  "sha256:0163b795cc91275e6b7bbf540ccf47a66001c3d9fd712b258eda47e36ec62c85" [label="mkdir{path=/usr/src/app}" shape="note"];
  "sha256:881401be86f562895077e7c9d32feb2f68dc46475561c3056636a623866b9a41" [label="local://context" shape="ellipse"];
  "sha256:31b611bd6ae1d0f67012fd24eff0ba65816dfb5f979a4ef597f2eac10599c79b" [label="copy{src=/requirements.txt, dest=/usr/src/app/}" shape="note"];
  "sha256:d97ff55fdc2520ab1a63c37d9dce7442fece4d8a83ad2a3ee9871530ca49a538" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:205b207bae362ece9c28afa8b08ecd7918bff37f2d2798e24da9cfba9af57167" [label="copy{src=/, dest=/usr/src/app/}" shape="note"];
  "sha256:83fb9cf09d0f866f23c742fa5c913a3cede31eacd00388e382558e9eb77b69f1" [label="sha256:83fb9cf09d0f866f23c742fa5c913a3cede31eacd00388e382558e9eb77b69f1" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:254ff79394214272a3810c2b98da7fa5b310f9d542dad482bed0b938d84a469f" [label=""];
  "sha256:254ff79394214272a3810c2b98da7fa5b310f9d542dad482bed0b938d84a469f" -> "sha256:0163b795cc91275e6b7bbf540ccf47a66001c3d9fd712b258eda47e36ec62c85" [label=""];
  "sha256:0163b795cc91275e6b7bbf540ccf47a66001c3d9fd712b258eda47e36ec62c85" -> "sha256:31b611bd6ae1d0f67012fd24eff0ba65816dfb5f979a4ef597f2eac10599c79b" [label=""];
  "sha256:881401be86f562895077e7c9d32feb2f68dc46475561c3056636a623866b9a41" -> "sha256:31b611bd6ae1d0f67012fd24eff0ba65816dfb5f979a4ef597f2eac10599c79b" [label=""];
  "sha256:31b611bd6ae1d0f67012fd24eff0ba65816dfb5f979a4ef597f2eac10599c79b" -> "sha256:d97ff55fdc2520ab1a63c37d9dce7442fece4d8a83ad2a3ee9871530ca49a538" [label=""];
  "sha256:d97ff55fdc2520ab1a63c37d9dce7442fece4d8a83ad2a3ee9871530ca49a538" -> "sha256:205b207bae362ece9c28afa8b08ecd7918bff37f2d2798e24da9cfba9af57167" [label=""];
  "sha256:881401be86f562895077e7c9d32feb2f68dc46475561c3056636a623866b9a41" -> "sha256:205b207bae362ece9c28afa8b08ecd7918bff37f2d2798e24da9cfba9af57167" [label=""];
  "sha256:205b207bae362ece9c28afa8b08ecd7918bff37f2d2798e24da9cfba9af57167" -> "sha256:83fb9cf09d0f866f23c742fa5c913a3cede31eacd00388e382558e9eb77b69f1" [label=""];
}

