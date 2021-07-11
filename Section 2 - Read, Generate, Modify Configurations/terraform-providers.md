## This snippet is from the "Type of Providers" video.

### Provider Documentation

https://www.terraform.io/docs/providers/index.html

### aws.tf

```sh
provider "aws" {
  version = "~> 2.0"
  region  = "us-east-1"
}
```

### wavefront.tf
```sh
provider "wavefront" {
   address = "spaceape.wavefront.com"
 }
```
### Downloading the Wavefront provider plugin

```sh
wget https://github.com/spaceapegames/terraform-provider-wavefront/releases/download/v2.1.1/terraform-provi
der-wavefront_v2.1.1_darwin_amd64
```

### Creating Plugin Directory and moving provider plugin

```sh
mkdir ~/terraform.d/plugins
mv terraform-provider-wavefront_v2.1.1_darwin_amd64 terraform-provider-wavefront_v2.1.1
mv terraform-provider-wavefront_v2.1.1 ~/.terraform.d/plugins/
```
