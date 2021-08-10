[app/sources/396179137.Dockerfile]
digraph {
  "sha256:32a9e8d8a2c3ddb69545bf3a626bf32d96b61e0db97704877a6e8880a9d34940" [label="local://context" shape="ellipse"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" [label="docker-image://docker.io/library/debian:9" shape="ellipse"];
  "sha256:54b3dc5178f50237db1255110c08a98616e7fce523ac2e2edd1a421804c9ef19" [label="/bin/sh -c echo 'force-unsafe-io' | tee /etc/dpkg/dpkg.cfg.d/02apt-speedup &&     echo 'DPkg::Post-Invoke {\"/bin/rm -f /var/cache/apt/archives/*.deb || true\";};' | tee /etc/apt/apt.conf.d/no-cache &&     echo 'Acquire::http {No-Cache=True;};' | tee /etc/apt/apt.conf.d/no-http-cache" shape="box"];
  "sha256:e74cd190aa356180f7c76f4c31a84d47a9cd6517220a3872f9f487763d2faefc" [label="/bin/sh -c apt-get update &&     apt-get install -y         build-essential         libffi-dev         &&     apt-get clean" shape="box"];
  "sha256:77faa0bc88654c1f3ae093acfb2396f8f11cd926a5d0a647c1ea8d078aca4d55" [label="/bin/sh -c apt-get install -y         python         python-dev         python-pip         &&     apt-get clean" shape="box"];
  "sha256:4722c7b18ca585ed632aa19c897abcb23cef380aeca7a416d4438a34a6306ec8" [label="/bin/sh -c apt-get install -y         libfuzzy-dev         &&     apt-get clean" shape="box"];
  "sha256:ded62c462d9a306745f0d517aba24a7461f86314a5947241eb7c9c2116d0469f" [label="copy{src=/, dest=/code}" shape="note"];
  "sha256:67f27e7a5ff048becf76d788734446233b40a74d652dbc4ac2d8729bcb6bc84b" [label="/bin/sh -c cd /code &&     BUILD_LIB=0 pip install . &&     pip install pytest &&     py.test" shape="box"];
  "sha256:26918e874e36b0c77dcdefabc32b20f263a8f34f1d6dee31b7d632f697ca8eba" [label="sha256:26918e874e36b0c77dcdefabc32b20f263a8f34f1d6dee31b7d632f697ca8eba" shape="plaintext"];
  "sha256:e5042710d794c9a85b8da270eec4c1cd6c044cc00653401e2f7e83fd82b79efa" -> "sha256:54b3dc5178f50237db1255110c08a98616e7fce523ac2e2edd1a421804c9ef19" [label=""];
  "sha256:54b3dc5178f50237db1255110c08a98616e7fce523ac2e2edd1a421804c9ef19" -> "sha256:e74cd190aa356180f7c76f4c31a84d47a9cd6517220a3872f9f487763d2faefc" [label=""];
  "sha256:e74cd190aa356180f7c76f4c31a84d47a9cd6517220a3872f9f487763d2faefc" -> "sha256:77faa0bc88654c1f3ae093acfb2396f8f11cd926a5d0a647c1ea8d078aca4d55" [label=""];
  "sha256:77faa0bc88654c1f3ae093acfb2396f8f11cd926a5d0a647c1ea8d078aca4d55" -> "sha256:4722c7b18ca585ed632aa19c897abcb23cef380aeca7a416d4438a34a6306ec8" [label=""];
  "sha256:4722c7b18ca585ed632aa19c897abcb23cef380aeca7a416d4438a34a6306ec8" -> "sha256:ded62c462d9a306745f0d517aba24a7461f86314a5947241eb7c9c2116d0469f" [label=""];
  "sha256:32a9e8d8a2c3ddb69545bf3a626bf32d96b61e0db97704877a6e8880a9d34940" -> "sha256:ded62c462d9a306745f0d517aba24a7461f86314a5947241eb7c9c2116d0469f" [label=""];
  "sha256:ded62c462d9a306745f0d517aba24a7461f86314a5947241eb7c9c2116d0469f" -> "sha256:67f27e7a5ff048becf76d788734446233b40a74d652dbc4ac2d8729bcb6bc84b" [label=""];
  "sha256:67f27e7a5ff048becf76d788734446233b40a74d652dbc4ac2d8729bcb6bc84b" -> "sha256:26918e874e36b0c77dcdefabc32b20f263a8f34f1d6dee31b7d632f697ca8eba" [label=""];
}

