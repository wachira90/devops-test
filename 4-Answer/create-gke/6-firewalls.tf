resource "google_compute_firewall" "allow_iap_ssh" {
  name    = "allow-iap-ssh"
  network = google_compute_network.vpc.name

  allow {
    protocol = "tcp"
    ports    = ["22", "80", "443", "8080"]
  }

  # allow {
  #   protocol = "udp"
  #   ports    = ["53", "123"]
  # }

  source_ranges = ["0.0.0.0/0"]
}
