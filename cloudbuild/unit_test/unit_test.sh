source ../../../project_variables.sh
echo $GCLOUD_PROJECT
echo $PROJECT_ID
go mod init terraunittest
go mod tidy
go test -v -timeout 120m