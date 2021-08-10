[app/sources/202708805.Dockerfile]
digraph {
  "sha256:bb5822d53a8a1f7df54363cc89099f939a0073c19f0355bf68a963a51ca31006" [label="local://context" shape="ellipse"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" [label="docker-image://docker.io/library/python:2.7" shape="ellipse"];
  "sha256:59edc6e4f980c9899356c51bb65f80818dc7ef6776e5822f2d0a13115b8fa118" [label="/bin/sh -c mkdir /code" shape="box"];
  "sha256:fa2307b0b794c85c7de245f7d7366c7fbfa51cfb61c2f0d60f9c38a57ce79549" [label="mkdir{path=/code}" shape="note"];
  "sha256:ab1753eb5f3a6b532ca8b8a28225b7bc3f02644bd5c6a6cbeedda48a9238ee6b" [label="copy{src=/requirements.txt, dest=/code/}" shape="note"];
  "sha256:43b1d9cc6811b4515d7a71790ee3ff4b2dae452c7d40271aa2393a2fa413ec1a" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:2d8193792777142f5d839a643cd0eaa7f589eb2853c1ac2beaa424185c6f85d4" [label="/bin/sh -c apt-get update" shape="box"];
  "sha256:c07d56d24033342aab62af57b1d9744e45c0d4d9f13ea94cee7ad5a96a4b9127" [label="/bin/sh -c apt-get install -y     gettext     nginx     vim" shape="box"];
  "sha256:a9b8037d7bc7706150a08ef4d7c9074227ca8a374ce130b533e6ed7f7cf85120" [label="/bin/sh -c echo \"daemon off;\" >> /etc/nginx/nginx.conf" shape="box"];
  "sha256:fa73457f0123620f50e29512ceb66517a8ce065804c4a3a7cd22a23f466eedeb" [label="/bin/sh -c rm /etc/nginx/sites-enabled/default" shape="box"];
  "sha256:c472917b614409332946857eac2a32e33b1f413406f25527ca809587afe98374" [label="/bin/sh -c ln -s /code/conf/nginx-app.conf /etc/nginx/sites-enabled/" shape="box"];
  "sha256:1512e2a2d0ba29f46b0be4a4804a8d13d28b5cc329a753caca599186bb55f683" [label="copy{src=/, dest=/code/}" shape="note"];
  "sha256:de23bed4fe223248fee86c41142e355c869aa3fde8c22c03b148d4a92cebccf0" [label="sha256:de23bed4fe223248fee86c41142e355c869aa3fde8c22c03b148d4a92cebccf0" shape="plaintext"];
  "sha256:2beec29df4b343e0dbf7adb589a613b17f1c676e089b989521eed6d23c1421d8" -> "sha256:59edc6e4f980c9899356c51bb65f80818dc7ef6776e5822f2d0a13115b8fa118" [label=""];
  "sha256:59edc6e4f980c9899356c51bb65f80818dc7ef6776e5822f2d0a13115b8fa118" -> "sha256:fa2307b0b794c85c7de245f7d7366c7fbfa51cfb61c2f0d60f9c38a57ce79549" [label=""];
  "sha256:fa2307b0b794c85c7de245f7d7366c7fbfa51cfb61c2f0d60f9c38a57ce79549" -> "sha256:ab1753eb5f3a6b532ca8b8a28225b7bc3f02644bd5c6a6cbeedda48a9238ee6b" [label=""];
  "sha256:bb5822d53a8a1f7df54363cc89099f939a0073c19f0355bf68a963a51ca31006" -> "sha256:ab1753eb5f3a6b532ca8b8a28225b7bc3f02644bd5c6a6cbeedda48a9238ee6b" [label=""];
  "sha256:ab1753eb5f3a6b532ca8b8a28225b7bc3f02644bd5c6a6cbeedda48a9238ee6b" -> "sha256:43b1d9cc6811b4515d7a71790ee3ff4b2dae452c7d40271aa2393a2fa413ec1a" [label=""];
  "sha256:43b1d9cc6811b4515d7a71790ee3ff4b2dae452c7d40271aa2393a2fa413ec1a" -> "sha256:2d8193792777142f5d839a643cd0eaa7f589eb2853c1ac2beaa424185c6f85d4" [label=""];
  "sha256:2d8193792777142f5d839a643cd0eaa7f589eb2853c1ac2beaa424185c6f85d4" -> "sha256:c07d56d24033342aab62af57b1d9744e45c0d4d9f13ea94cee7ad5a96a4b9127" [label=""];
  "sha256:c07d56d24033342aab62af57b1d9744e45c0d4d9f13ea94cee7ad5a96a4b9127" -> "sha256:a9b8037d7bc7706150a08ef4d7c9074227ca8a374ce130b533e6ed7f7cf85120" [label=""];
  "sha256:a9b8037d7bc7706150a08ef4d7c9074227ca8a374ce130b533e6ed7f7cf85120" -> "sha256:fa73457f0123620f50e29512ceb66517a8ce065804c4a3a7cd22a23f466eedeb" [label=""];
  "sha256:fa73457f0123620f50e29512ceb66517a8ce065804c4a3a7cd22a23f466eedeb" -> "sha256:c472917b614409332946857eac2a32e33b1f413406f25527ca809587afe98374" [label=""];
  "sha256:c472917b614409332946857eac2a32e33b1f413406f25527ca809587afe98374" -> "sha256:1512e2a2d0ba29f46b0be4a4804a8d13d28b5cc329a753caca599186bb55f683" [label=""];
  "sha256:bb5822d53a8a1f7df54363cc89099f939a0073c19f0355bf68a963a51ca31006" -> "sha256:1512e2a2d0ba29f46b0be4a4804a8d13d28b5cc329a753caca599186bb55f683" [label=""];
  "sha256:1512e2a2d0ba29f46b0be4a4804a8d13d28b5cc329a753caca599186bb55f683" -> "sha256:de23bed4fe223248fee86c41142e355c869aa3fde8c22c03b148d4a92cebccf0" [label=""];
}

