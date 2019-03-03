resource "google_compute_firewall" "allow-http" {  
    name = "allow-http"
    network = "default"

    allow {
        protocol = "tcp"
        ports = ["80"]
    }

    source_ranges = ["0.0.0.0/0"]
    target_tags = ["http"]
}


resource "google_compute_instance" "tomcat" {
  name         = "tomcat"
  machine_type = "n1-standard-2"
  zone         = "us-west2-a"

  tags = ["http"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }


  // Local SSD disk
  scratch_disk {}

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }
metadata {
    sshKeys = "ubuntu:${file(var.ssh_public_key_filepath)}"
  }

metadata_startup_script = "${file("start-up-script.sh")}"

}



