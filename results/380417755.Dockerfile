[app/sources/380417755.Dockerfile]
digraph {
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" [label="docker-image://docker.io/library/ruby:2.2" shape="ellipse"];
  "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" [label="/bin/sh -c apt-get update && apt-get install -y   build-essential   nodejs" shape="box"];
  "sha256:54ab2af3b77716ac898b215e2155ded25b8b74c4b02a52f73113bea5c73cb305" [label="/bin/sh -c mkdir -p /code" shape="box"];
  "sha256:d41d60ca5ab598a9b7964211f4d378194c9cfdc075ea198c3e786b89593bab64" [label="mkdir{path=/code}" shape="note"];
  "sha256:ded2f8e46658823b958c88395284578b6c833097f89a36c2c04e56edf118ec38" [label="local://context" shape="ellipse"];
  "sha256:07890db7206a0c5ffdecf2f8a75cb8d1a47e2959e0d3971820670db5acd01b2b" [label="copy{src=/Gemfile, dest=/code/},copy{src=/Gemfile.lock, dest=/code/}" shape="note"];
  "sha256:3b418f6cd17d701889698a90dc8879c3e073ad855bb313e310c7ca5068c70c7f" [label="/bin/sh -c gem install bundler && bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:d5cc79c9af39d803e6105f649de0af3e83d4d2665c2f11b01a0718039471aee0" [label="sha256:d5cc79c9af39d803e6105f649de0af3e83d4d2665c2f11b01a0718039471aee0" shape="plaintext"];
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" -> "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" [label=""];
  "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" -> "sha256:54ab2af3b77716ac898b215e2155ded25b8b74c4b02a52f73113bea5c73cb305" [label=""];
  "sha256:54ab2af3b77716ac898b215e2155ded25b8b74c4b02a52f73113bea5c73cb305" -> "sha256:d41d60ca5ab598a9b7964211f4d378194c9cfdc075ea198c3e786b89593bab64" [label=""];
  "sha256:d41d60ca5ab598a9b7964211f4d378194c9cfdc075ea198c3e786b89593bab64" -> "sha256:07890db7206a0c5ffdecf2f8a75cb8d1a47e2959e0d3971820670db5acd01b2b" [label=""];
  "sha256:ded2f8e46658823b958c88395284578b6c833097f89a36c2c04e56edf118ec38" -> "sha256:07890db7206a0c5ffdecf2f8a75cb8d1a47e2959e0d3971820670db5acd01b2b" [label=""];
  "sha256:07890db7206a0c5ffdecf2f8a75cb8d1a47e2959e0d3971820670db5acd01b2b" -> "sha256:3b418f6cd17d701889698a90dc8879c3e073ad855bb313e310c7ca5068c70c7f" [label=""];
  "sha256:3b418f6cd17d701889698a90dc8879c3e073ad855bb313e310c7ca5068c70c7f" -> "sha256:d5cc79c9af39d803e6105f649de0af3e83d4d2665c2f11b01a0718039471aee0" [label=""];
}

