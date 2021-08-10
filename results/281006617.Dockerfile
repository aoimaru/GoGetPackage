[app/sources/281006617.Dockerfile]
digraph {
  "sha256:51865aab4d01b5b9f4934029172b8ffe18ad2b6d8fca82c62c9101050bec243d" [label="docker-image://docker.io/library/nginx:1.11.12" shape="ellipse"];
  "sha256:d407458969354ecf9546cc740463cbe443b98602551dcd276bdc8d69fa26cf1c" [label="/bin/sh -c rm /etc/nginx/conf.d/default.conf" shape="box"];
  "sha256:b6acee56e82c640caa320f04425f5850ea54998211fdbd66036e3834f7c579a4" [label="local://context" shape="ellipse"];
  "sha256:620f11e60d68e9d2364d3721a2eb13dc49659a3a53e09c355995501ad2eb750b" [label="copy{src=/app.conf, dest=/etc/nginx/conf.d/app.conf}" shape="note"];
  "sha256:aa46cd73347774fdfa4861e8a5c69a25ba068e9c891873db78fc6e9eeb075a34" [label="/bin/sh -c mkdir /app" shape="box"];
  "sha256:cb9326f15a8cafca9fb84592ac002e50a2cc05af8e744eb9f7b404a744d6537a" [label="copy{src=/index.html, dest=/app}" shape="note"];
  "sha256:beeeff30a05d2cf6a13ba404af2a8ff70b69b2d57fbfd095d5f9877968ec727e" [label="copy{src=/wait-for-it.sh, dest=/app}" shape="note"];
  "sha256:0c641afa4d328739f663f22e9336e34a1e59d88de5da6faaa79fd2075ec859bb" [label="sha256:0c641afa4d328739f663f22e9336e34a1e59d88de5da6faaa79fd2075ec859bb" shape="plaintext"];
  "sha256:51865aab4d01b5b9f4934029172b8ffe18ad2b6d8fca82c62c9101050bec243d" -> "sha256:d407458969354ecf9546cc740463cbe443b98602551dcd276bdc8d69fa26cf1c" [label=""];
  "sha256:d407458969354ecf9546cc740463cbe443b98602551dcd276bdc8d69fa26cf1c" -> "sha256:620f11e60d68e9d2364d3721a2eb13dc49659a3a53e09c355995501ad2eb750b" [label=""];
  "sha256:b6acee56e82c640caa320f04425f5850ea54998211fdbd66036e3834f7c579a4" -> "sha256:620f11e60d68e9d2364d3721a2eb13dc49659a3a53e09c355995501ad2eb750b" [label=""];
  "sha256:620f11e60d68e9d2364d3721a2eb13dc49659a3a53e09c355995501ad2eb750b" -> "sha256:aa46cd73347774fdfa4861e8a5c69a25ba068e9c891873db78fc6e9eeb075a34" [label=""];
  "sha256:aa46cd73347774fdfa4861e8a5c69a25ba068e9c891873db78fc6e9eeb075a34" -> "sha256:cb9326f15a8cafca9fb84592ac002e50a2cc05af8e744eb9f7b404a744d6537a" [label=""];
  "sha256:b6acee56e82c640caa320f04425f5850ea54998211fdbd66036e3834f7c579a4" -> "sha256:cb9326f15a8cafca9fb84592ac002e50a2cc05af8e744eb9f7b404a744d6537a" [label=""];
  "sha256:cb9326f15a8cafca9fb84592ac002e50a2cc05af8e744eb9f7b404a744d6537a" -> "sha256:beeeff30a05d2cf6a13ba404af2a8ff70b69b2d57fbfd095d5f9877968ec727e" [label=""];
  "sha256:b6acee56e82c640caa320f04425f5850ea54998211fdbd66036e3834f7c579a4" -> "sha256:beeeff30a05d2cf6a13ba404af2a8ff70b69b2d57fbfd095d5f9877968ec727e" [label=""];
  "sha256:beeeff30a05d2cf6a13ba404af2a8ff70b69b2d57fbfd095d5f9877968ec727e" -> "sha256:0c641afa4d328739f663f22e9336e34a1e59d88de5da6faaa79fd2075ec859bb" [label=""];
}

