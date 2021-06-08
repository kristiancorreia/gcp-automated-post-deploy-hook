ash ../../../project_variables.sh
echo $GCLOUD_PROJECT
go mod init terraunittest
go mod tidy
go test -v -timeout 120m