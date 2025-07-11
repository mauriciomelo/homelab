# Homelab Overview Jun 2025

![](assets/homelab%202025.excalidraw.svg)

## Hardware

| **Device**      | **Processor**     | **Memory** | **Storage**                     |
| --------------- | ----------------- | ---------- | ------------------------------- |
| Mac mini        | M2 Pro Chip       | 32GB       | 500GB Storage                   |
| Beelink Mini PC | Ryzen R5 6600H    | 16GB       | 500GB SSD NVMe + 256GB SSD NVMe |
| PC Pichau Balam | AMD Ryzen 5 4600G | 40GB       | 240GB SSD + 2x 4TB HDD          |

## Software

| **Software**              | **My Use Case**                                                                                                                                                    |
| ------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **MacOS**                 | My Mac mini daily driver for personal tasks and projects.                                                                                                          |
| **Ubuntu Server**         | Primary host for Docker and Kubernetes nodes.                                                                                                                      |
| **Proxmox**               | My bare-metal hypervisor cluster. VMs are configured for high availability.                                                                                        |
| **Proxmox Backup Server** | Backup for Proxmox VMs/containers. It runs on a Mac mini, kept outside of the Proxmox cluster for resilience.                                                      |
| **AdGuard**               | Network-wide DNS server to block trackers and ads, and to resolve custom domain names for my services.                                                             |
| **TrueNAS**               | Functions as the central storage hub, managing file shares, media libraries, NVR footage, backups, and persistent data for other services, etc.                    |
| **Docker**                | Serves as the main container platform for testing and running the majority of my applications. I plan to migrate most of my services to k8s eventually.            |
| **Portainer**             | Portainer provides a user-friendly web UI for managing Docker.                                                                                                     |
| **Kubernetes (k3s)**      | Runs a lightweight k3s cluster. I plan to migrate more services from Docker once I've simplified the workflow.                                                     |
| **Flux**                  | Manages my k3s cluster configuration using a GitOps approach, automatically syncing the cluster's state with a Git repository.                                     |
| **OpenTelemetry**         | Acts as the foundation of the observability stack by collecting telemetry data from the cluster and applications.                                                  |
| **Prometheus**            | Stores all time-series metrics from the Kubernetes cluster, enabling monitoring.                                                                                   |
| **Loki**                  | Centralizes all logs generated by the Kubernetes cluster for easier troubleshooting and analysis.                                                                  |
| **Grafana**               | UI for the observability stack with custom dashboards to display metrics from Prometheus and logs from Loki.                                                       |
| **Traefik**               | The ingress controller, resolves user-friendly local domains to services running on Docker, Kubernetes, or anywhere on my network.                                 |
| **Tailscale**             | Creates a private mesh VPN, providing secure remote access to my entire network and its services without exposing anything to the public internet.                 |
| **Syncthing**             | Synchronizes files across all my devices, including phones.                                                                                                        |
| **Jellyfin**              | Runs as the self-hosted media server, organizing and streaming media.                                                                                              |
| **Frigate**               | The open-source NVR for my home camera, and just as importantly, for checking in on Maia 🐶 when I'm away from home.                                               |
| **Home Assistant**        | Serves as the central brain of my smart home, orchestrating automations and controlling IoT devices like sensors, lights, and switches across Matter, Zigbee, etc. |
