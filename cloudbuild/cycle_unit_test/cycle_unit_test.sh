source ../../project_variables.sh
go mod init terraunittest
go mod tidy
go test -v ./... -timeout 120m -p 1