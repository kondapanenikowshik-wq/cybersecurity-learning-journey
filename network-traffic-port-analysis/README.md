# Network Traffic and Port Analysis Lab

A hands-on cybersecurity project that analyzes network interfaces, routing, DNS resolution, listening ports, active services, HTTPS connectivity, and localhost exposure on an Ubuntu virtual machine.

## Project Scope

All testing was performed only against my own Ubuntu virtual machine and `localhost`.

No external or unauthorized systems were scanned.

## Features

- Identifies the private IP address and default gateway
- Inspects TCP and UDP listening ports
- Maps ports to active system processes
- Tests DNS resolution
- Tests HTTPS connectivity
- Scans localhost with Nmap
- Detects service versions
- Generates an automated network report
- Documents security findings and recommendations

## Files

- `analyze-network.sh` — Bash automation script
- `network-information.txt` — Manual command output
- `automated-network-report.txt` — Script-generated report
- `security-findings.txt` — Security assessment and observations
- `README.md` — Project documentation

## Tools Used

- Linux
- Bash
- `ip`
- `ss`
- `getent`
- `curl`
- Nmap
- Git
- GitHub

## Main Findings

The Ubuntu virtual machine used:

- Private IP: `192.168.64.2`
- Gateway: `192.168.64.1`
- Interface: `enp0s1`

DNS resolution and HTTPS connectivity were successful.

The localhost Nmap scan identified one open TCP port:

- `631/tcp`
- Service: Internet Printing Protocol
- Software: CUPS 2.4

The CUPS service was bound to localhost addresses, which reduced exposure to other systems on the network.

No clearly unexpected remotely exposed TCP services were identified.

## Run the Automation Script

```bash
chmod +x analyze-network.sh
./analyze-network.sh
cat automated-network-report.txt
