provider digitalocean {
  token = "ADD-YOUR-DO-TOKEN-HERE"
}

resource "digitalocean_droplet" "dodemo" {
  region = "BLR1"
  name   = "kplabs-demo"
  size   = "512mb"
  image  = "ubuntu-14-04-x64"
}
