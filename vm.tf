### New VM
resource "google_compute_instance" "default" {
  name         = "test1"
  machine_type = "e2-medium"
  zone         = "us-central1-c"
  project = "opportune-epoch-368707"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

}
