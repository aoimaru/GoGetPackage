[app/sources/252798329.Dockerfile]
digraph {
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" [label="docker-image://docker.io/library/ubuntu:14.04@sha256:43cb19408de1e0ecf3ba5b5372ec98978963d6d0be42d0ad825e77a3bd16b5f7" shape="ellipse"];
  "sha256:f654bcf8b72a32f32cddafd8fd6fe09ff174560d29f3a2b26e42eecd8b4145d7" [label="/bin/sh -c apt-get update # REFRESHED: 2015-01-09" shape="box"];
  "sha256:f21fc6ac131dd0a25e976011c0e93d049334938129d032a6e7574336b9bb4e18" [label="/bin/sh -c apt-get upgrade -y -q" shape="box"];
  "sha256:64871d16e4faa38565b20fce332eac01910e476a80474953825f162f9b05fdc5" [label="/bin/sh -c apt-get install -q -y wget ca-certificates software-properties-common python-software-properties" shape="box"];
  "sha256:70de7259c647cfef40404a03ffe461b2ae0cfa57aa3250935d1d8ea965b0ca92" [label="sha256:70de7259c647cfef40404a03ffe461b2ae0cfa57aa3250935d1d8ea965b0ca92" shape="plaintext"];
  "sha256:f51b7c7cef2ef65ffefa6d236274affe2a9ba29dea18f624f9a4bea95483c9ff" -> "sha256:f654bcf8b72a32f32cddafd8fd6fe09ff174560d29f3a2b26e42eecd8b4145d7" [label=""];
  "sha256:f654bcf8b72a32f32cddafd8fd6fe09ff174560d29f3a2b26e42eecd8b4145d7" -> "sha256:f21fc6ac131dd0a25e976011c0e93d049334938129d032a6e7574336b9bb4e18" [label=""];
  "sha256:f21fc6ac131dd0a25e976011c0e93d049334938129d032a6e7574336b9bb4e18" -> "sha256:64871d16e4faa38565b20fce332eac01910e476a80474953825f162f9b05fdc5" [label=""];
  "sha256:64871d16e4faa38565b20fce332eac01910e476a80474953825f162f9b05fdc5" -> "sha256:70de7259c647cfef40404a03ffe461b2ae0cfa57aa3250935d1d8ea965b0ca92" [label=""];
}

