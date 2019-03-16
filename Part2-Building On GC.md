# Part II - Building the image in Google Cloud Build

## Enabling Beta Google Cloud Build 

It's necessary to enable in the Google Cloud Platform the Google Build API

### Syncing with Control Version

Set up a GitHub / GitLab repository in the Google Cloud Build Dashboard according with your project's requirements. 

After add the repository and the rules which will be triggered for building the image, force the build to test the config.

## Test the built image in GCB

`docker run -ti -p 9000:9000 gcr.io/k8sstudyjam-kevinsimper/github.com/mtenrero/gdg-k8s-jam:dd8f84098d04dbf19cf47b12d6fdcd91de5fe6d9`

## Working with submodules

...