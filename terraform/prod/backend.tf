terraform {
  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "azathoth-terraform"
    region     = "ru-central1"
    key        = "terraform_stage.tfstate"
    access_key = "YCAJEhJKFIVuAHtPJGkCo5PFx"

    skip_region_validation      = true
    skip_credentials_validation = true
    }
  }
