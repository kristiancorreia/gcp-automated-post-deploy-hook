/usr/bin/env/bash

set -eo pipefail

go mod init terraunittest \
&& go mod tidy \
&& go test -v -timeout 30m