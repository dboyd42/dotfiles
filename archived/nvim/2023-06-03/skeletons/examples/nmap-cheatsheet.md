# Nmap Cheat Sheet

**Author:** David Boyd<br>
**Date:** *date*

## Table of Contents

- [Scans](#scans)
  - [Basic Scanning](#basic-scanning)
  - [Advanced Scanning](#advanced-scanning)
- [Output](#output)

## Scans

### Basic Scanning

- Target IP or Hostname: `nmap $TM`
- Range of Hosts: `nmap $TM1 $TM2 $TM3`
- Specific Ports: `nmap -p $PORT1 $PORT2 $PORT3 $TM1`

### Advanced Scanning

Explore advanced scanning techniques and options in the Nmap documentation.

For more information, refer to the [official Nmap
documentation][nmap-official].

## Output

- Save to file: `nmap -oN scan.txt target`

<!-- Reference Links -->

[nmap-official]: https://nmap.org/docs.html
