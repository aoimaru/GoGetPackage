[app/sources/207888182.Dockerfile]
digraph {
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" [label="docker-image://docker.io/library/ruby:2.2" shape="ellipse"];
  "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" [label="/bin/sh -c apt-get update && apt-get install -y   build-essential   nodejs" shape="box"];
  "sha256:5b65a4c637bb62d7ea68e40425eeff97c98d456c9cdef3168287511e3b956656" [label="/bin/sh -c mkdir -p /app" shape="box"];
  "sha256:1126105996ee8b529df53146ddb7395fd525694073003b1b12461638a0bcd842" [label="mkdir{path=/app}" shape="note"];
  "sha256:ce29d319f52648bb556c11593bd39f4d51e610b651ca33ee185aadc0e217f44c" [label="local://context" shape="ellipse"];
  "sha256:e2e4f9d209188fa0b84aeba07fec0b7b6dd9d900ee0d785d7d6d5224ff8890cf" [label="copy{src=/Gemfile, dest=/app/},copy{src=/Gemfile.lock, dest=/app/}" shape="note"];
  "sha256:8ffadac397c3252adaca720d34c9c3da4335e172be2a938002043fcafe1312c4" [label="/bin/sh -c gem install bundler && bundle install --jobs 20 --retry 5" shape="box"];
  "sha256:1bfec2d90151da3383957ac8e054305d40958519ef8e19ef2ce21e927e76dfdc" [label="copy{src=/, dest=/app/}" shape="note"];
  "sha256:5d8778f1f4cddee23d10c450f7625f04ec06c94f1cb59f2dbe7f74328a22a71c" [label="/bin/sh -c rake db:setup" shape="box"];
  "sha256:0429fbf8a6eefa81207239d64be64847956b6d98651d50d67745b573422f1fd0" [label="sha256:0429fbf8a6eefa81207239d64be64847956b6d98651d50d67745b573422f1fd0" shape="plaintext"];
  "sha256:3c0331b1d9b539773e1221792c640cf08d579a3a16c0f33f5a678abb4c350ebe" -> "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" [label=""];
  "sha256:3f5417e3daf735a28eb4f1e1daf93bc56cd493f43cb9e3b35303aaa67a8e70f2" -> "sha256:5b65a4c637bb62d7ea68e40425eeff97c98d456c9cdef3168287511e3b956656" [label=""];
  "sha256:5b65a4c637bb62d7ea68e40425eeff97c98d456c9cdef3168287511e3b956656" -> "sha256:1126105996ee8b529df53146ddb7395fd525694073003b1b12461638a0bcd842" [label=""];
  "sha256:1126105996ee8b529df53146ddb7395fd525694073003b1b12461638a0bcd842" -> "sha256:e2e4f9d209188fa0b84aeba07fec0b7b6dd9d900ee0d785d7d6d5224ff8890cf" [label=""];
  "sha256:ce29d319f52648bb556c11593bd39f4d51e610b651ca33ee185aadc0e217f44c" -> "sha256:e2e4f9d209188fa0b84aeba07fec0b7b6dd9d900ee0d785d7d6d5224ff8890cf" [label=""];
  "sha256:e2e4f9d209188fa0b84aeba07fec0b7b6dd9d900ee0d785d7d6d5224ff8890cf" -> "sha256:8ffadac397c3252adaca720d34c9c3da4335e172be2a938002043fcafe1312c4" [label=""];
  "sha256:8ffadac397c3252adaca720d34c9c3da4335e172be2a938002043fcafe1312c4" -> "sha256:1bfec2d90151da3383957ac8e054305d40958519ef8e19ef2ce21e927e76dfdc" [label=""];
  "sha256:ce29d319f52648bb556c11593bd39f4d51e610b651ca33ee185aadc0e217f44c" -> "sha256:1bfec2d90151da3383957ac8e054305d40958519ef8e19ef2ce21e927e76dfdc" [label=""];
  "sha256:1bfec2d90151da3383957ac8e054305d40958519ef8e19ef2ce21e927e76dfdc" -> "sha256:5d8778f1f4cddee23d10c450f7625f04ec06c94f1cb59f2dbe7f74328a22a71c" [label=""];
  "sha256:5d8778f1f4cddee23d10c450f7625f04ec06c94f1cb59f2dbe7f74328a22a71c" -> "sha256:0429fbf8a6eefa81207239d64be64847956b6d98651d50d67745b573422f1fd0" [label=""];
}

