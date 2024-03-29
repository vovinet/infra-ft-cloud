terraform {
    cloud {
        organization = "vovinet-netology"

        workspaces {
            name = "Prod"
        }
    }

    required_providers {
        yandex = {
        source = "yandex-cloud/yandex"
        }
    }

    required_version = ">= 0.13"
}

provider "yandex" {
    cloud_id = var.cloud_id
    folder_id = var.folder_id
    zone = var.yc_zone
}