resource "yandex_compute_instance" "db" {
  name = "reddit-db"
  labels = {
    tags = "reddit-db"
  }

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = var.db_disk_image
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
  ssh-keys = "azathoth:${file(var.public_key_path)}"
  }

/*  connection {
    type        = "ssh"
    host        = self.network_interface.0.nat_ip_address
    user        = "ubuntu"
    agent       = false
    private_key = file(var.private_key_path)
  }

  provisioner "remote-exec" {
    inline = ["sudo rm /etc/mongod.conf"]
  }

  provisioner "file" {
    source      = "../modules/db/mongod.conf"
    destination = "/tmp/mongod.conf"
  }

  provisioner "remote-exec" {
    inline = ["sudo mv /tmp/mongod.conf /etc/mongod.conf","sudo systemctl restart mongod"]
  }*/

}
