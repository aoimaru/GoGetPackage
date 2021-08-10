[app/sources/254709843.Dockerfile]
digraph {
  "sha256:0e11de520be654bab925246b9a1e27c712c65f18e631541adac7b768b864df0c" [label="docker-image://docker.io/library/python:3.6-alpine3.7" shape="ellipse"];
  "sha256:f6828f00fe3a5993faf6b4c8ff08e4ddbe5b8e55a8b15d6d7352732b5e0b1e99" [label="/bin/sh -c echo \"http://dl-4.alpinelinux.org/alpine/v3.7/main\" >> /etc/apk/repositories &&     echo \"http://dl-4.alpinelinux.org/alpine/v3.7/community\" >> /etc/apk/repositories" shape="box"];
  "sha256:6120e0ff089bbc90e14339beffc0826a5812cd66f15c1edbf25f45141f073f16" [label="/bin/sh -c apk update" shape="box"];
  "sha256:97e44492334fb75e0fd1767a9c3f5c927befc4e99cf738bccd8239a69ba320ca" [label="/bin/sh -c apk add chromium chromium-chromedriver" shape="box"];
  "sha256:a5285f77501e206d34fc23104f0b362147b3cf4e54ddd46ceec6780633d266ae" [label="/bin/sh -c pip install selenium==3.8.0" shape="box"];
  "sha256:964b4afe9cfeb065951acd93fdedd5c29fc4438a77a57b190da7ecae4d640b40" [label="sha256:964b4afe9cfeb065951acd93fdedd5c29fc4438a77a57b190da7ecae4d640b40" shape="plaintext"];
  "sha256:0e11de520be654bab925246b9a1e27c712c65f18e631541adac7b768b864df0c" -> "sha256:f6828f00fe3a5993faf6b4c8ff08e4ddbe5b8e55a8b15d6d7352732b5e0b1e99" [label=""];
  "sha256:f6828f00fe3a5993faf6b4c8ff08e4ddbe5b8e55a8b15d6d7352732b5e0b1e99" -> "sha256:6120e0ff089bbc90e14339beffc0826a5812cd66f15c1edbf25f45141f073f16" [label=""];
  "sha256:6120e0ff089bbc90e14339beffc0826a5812cd66f15c1edbf25f45141f073f16" -> "sha256:97e44492334fb75e0fd1767a9c3f5c927befc4e99cf738bccd8239a69ba320ca" [label=""];
  "sha256:97e44492334fb75e0fd1767a9c3f5c927befc4e99cf738bccd8239a69ba320ca" -> "sha256:a5285f77501e206d34fc23104f0b362147b3cf4e54ddd46ceec6780633d266ae" [label=""];
  "sha256:a5285f77501e206d34fc23104f0b362147b3cf4e54ddd46ceec6780633d266ae" -> "sha256:964b4afe9cfeb065951acd93fdedd5c29fc4438a77a57b190da7ecae4d640b40" [label=""];
}

