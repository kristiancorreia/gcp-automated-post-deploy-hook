export GCLOUD_PROJECT=automated-post-deploy-hook
echo $GCLOUD_PROJECT
export TF_VAR_PROJECT_ID=$GCLOUD_PROJECT
echo $TF_VAR_PROJECT_ID