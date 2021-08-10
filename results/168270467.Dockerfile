[app/sources/168270467.Dockerfile]
digraph {
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" [label="docker-image://docker.io/library/centos:centos6" shape="ellipse"];
  "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" [label="/bin/sh -c yum -y --setopt=tsflags=nodocs install https://www.softwarecollections.org/en/scls/rhscl/devtoolset-4/epel-6-x86_64/download/rhscl-devtoolset-4-epel-6-x86_64.noarch.rpm &&     yum clean all" shape="box"];
  "sha256:f06da5f97b25c5d7db8473d2610f173434903e2850d22fc8ed301791c670d90c" [label="/bin/sh -c yum install -y --setopt=tsflags=nodocs devtoolset-4-systemtap && yum clean all" shape="box"];
  "sha256:e5f907ebd9d11f9822f9225d4405bf42047b81d020dea92742e2df56140b4003" [label="local://context" shape="ellipse"];
  "sha256:b68ddacab95ce690d40e2219c1f47ce81cea093e27c4e38083fc079635f0776c" [label="copy{src=/enabledevtoolset-4.sh, dest=/usr/share/cont-layer/common/env/enabledevtoolset-4.sh}" shape="note"];
  "sha256:1a55b284f9bffd83ac818fb3ac51fdf82d894eaecb0d4f3e7b6469e19be7e2a4" [label="copy{src=/usr, dest=/usr}" shape="note"];
  "sha256:bc0e0c0a34f5ce05a3811a4b6b32ef6af7c7886ff7a5d3c6bd3165f3e1fbad6d" [label="copy{src=/etc, dest=/etc}" shape="note"];
  "sha256:b4d028d597e7c30cbdb428706011aa8d6b2a0ea5438f7621e333ed40cc004da7" [label="copy{src=/root, dest=/root}" shape="note"];
  "sha256:afb98647bfcee9f456c284c923dc30af07bc6fabc902a0d9645083dcc7e2cf62" [label="/bin/sh -c groupadd -r default -f -g 1001 &&         useradd -u 1001 -r -g default -d ${HOME} -s /sbin/nologin                         -c \"Default Application User\" default" shape="box"];
  "sha256:fa5adfc1208c47babd497e4d80f9f23dca96dde117d2a23f7820817762afb8ab" [label="sha256:fa5adfc1208c47babd497e4d80f9f23dca96dde117d2a23f7820817762afb8ab" shape="plaintext"];
  "sha256:d1a6123fcd53665b5d5907d457138d252b04072dce5ddb398ce053b34a7cc614" -> "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" [label=""];
  "sha256:06ce71e97ab9e0b48b890ad2aa776b17282c150d72fd0942fcf5484ffd13863d" -> "sha256:f06da5f97b25c5d7db8473d2610f173434903e2850d22fc8ed301791c670d90c" [label=""];
  "sha256:f06da5f97b25c5d7db8473d2610f173434903e2850d22fc8ed301791c670d90c" -> "sha256:b68ddacab95ce690d40e2219c1f47ce81cea093e27c4e38083fc079635f0776c" [label=""];
  "sha256:e5f907ebd9d11f9822f9225d4405bf42047b81d020dea92742e2df56140b4003" -> "sha256:b68ddacab95ce690d40e2219c1f47ce81cea093e27c4e38083fc079635f0776c" [label=""];
  "sha256:b68ddacab95ce690d40e2219c1f47ce81cea093e27c4e38083fc079635f0776c" -> "sha256:1a55b284f9bffd83ac818fb3ac51fdf82d894eaecb0d4f3e7b6469e19be7e2a4" [label=""];
  "sha256:e5f907ebd9d11f9822f9225d4405bf42047b81d020dea92742e2df56140b4003" -> "sha256:1a55b284f9bffd83ac818fb3ac51fdf82d894eaecb0d4f3e7b6469e19be7e2a4" [label=""];
  "sha256:1a55b284f9bffd83ac818fb3ac51fdf82d894eaecb0d4f3e7b6469e19be7e2a4" -> "sha256:bc0e0c0a34f5ce05a3811a4b6b32ef6af7c7886ff7a5d3c6bd3165f3e1fbad6d" [label=""];
  "sha256:e5f907ebd9d11f9822f9225d4405bf42047b81d020dea92742e2df56140b4003" -> "sha256:bc0e0c0a34f5ce05a3811a4b6b32ef6af7c7886ff7a5d3c6bd3165f3e1fbad6d" [label=""];
  "sha256:bc0e0c0a34f5ce05a3811a4b6b32ef6af7c7886ff7a5d3c6bd3165f3e1fbad6d" -> "sha256:b4d028d597e7c30cbdb428706011aa8d6b2a0ea5438f7621e333ed40cc004da7" [label=""];
  "sha256:e5f907ebd9d11f9822f9225d4405bf42047b81d020dea92742e2df56140b4003" -> "sha256:b4d028d597e7c30cbdb428706011aa8d6b2a0ea5438f7621e333ed40cc004da7" [label=""];
  "sha256:b4d028d597e7c30cbdb428706011aa8d6b2a0ea5438f7621e333ed40cc004da7" -> "sha256:afb98647bfcee9f456c284c923dc30af07bc6fabc902a0d9645083dcc7e2cf62" [label=""];
  "sha256:afb98647bfcee9f456c284c923dc30af07bc6fabc902a0d9645083dcc7e2cf62" -> "sha256:fa5adfc1208c47babd497e4d80f9f23dca96dde117d2a23f7820817762afb8ab" [label=""];
}

