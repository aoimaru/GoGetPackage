[app/sources/252782720.Dockerfile]
digraph {
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" [label="docker-image://docker.io/library/python:2.7-alpine" shape="ellipse"];
  "sha256:51030cba28353c9b605892e11d5d77d473378535737d5401e472fa85f3c539bd" [label="local://context" shape="ellipse"];
  "sha256:36b49d9f8393119097eabf8e566df30cc00b40190c368b22bdf4e33f35641446" [label="copy{src=/, dest=/app}" shape="note"];
  "sha256:f3f395531f54082dc79f99a04f620fbc79e728ae295f75f76b57d7d35591249d" [label="mkdir{path=/app}" shape="note"];
  "sha256:52de166f9a559ec676fddd9a0bcdbb88adb8cf1bd5f2a1f74b768be17e2990d4" [label="/bin/sh -c pip install -r requirements.txt" shape="box"];
  "sha256:b9d2c91e8d1ec6461e0a595487ebcf31c3e5035efdd06a04c791db35b9e940a4" [label="sha256:b9d2c91e8d1ec6461e0a595487ebcf31c3e5035efdd06a04c791db35b9e940a4" shape="plaintext"];
  "sha256:fda0cd4d082a967cf6f4e55ef37b76be5fbc3f718928911d9fadb37eece3ff94" -> "sha256:36b49d9f8393119097eabf8e566df30cc00b40190c368b22bdf4e33f35641446" [label=""];
  "sha256:51030cba28353c9b605892e11d5d77d473378535737d5401e472fa85f3c539bd" -> "sha256:36b49d9f8393119097eabf8e566df30cc00b40190c368b22bdf4e33f35641446" [label=""];
  "sha256:36b49d9f8393119097eabf8e566df30cc00b40190c368b22bdf4e33f35641446" -> "sha256:f3f395531f54082dc79f99a04f620fbc79e728ae295f75f76b57d7d35591249d" [label=""];
  "sha256:f3f395531f54082dc79f99a04f620fbc79e728ae295f75f76b57d7d35591249d" -> "sha256:52de166f9a559ec676fddd9a0bcdbb88adb8cf1bd5f2a1f74b768be17e2990d4" [label=""];
  "sha256:52de166f9a559ec676fddd9a0bcdbb88adb8cf1bd5f2a1f74b768be17e2990d4" -> "sha256:b9d2c91e8d1ec6461e0a595487ebcf31c3e5035efdd06a04c791db35b9e940a4" [label=""];
}

