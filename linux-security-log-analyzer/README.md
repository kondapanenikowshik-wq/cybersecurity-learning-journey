# Linux Security Log Analyzer

A beginner cybersecurity project that analyzes a sample Linux authentication log and generates a security report.

## Features

- Detects failed SSH login attempts
- Counts total failed logins
- Extracts source IP addresses
- Ranks suspicious IP addresses by frequency
- Saves findings to a report file

## Files

- `analyze-log.sh` — Bash analysis script
- `sample-auth.log` — Sample authentication log
- `security-report.txt` — Generated analysis report

## How It Works

The script uses Linux command-line tools including:

- `grep`
- `awk`
- `sort`
- `uniq`

## Run the Project

```bash
chmod +x analyze-log.sh
./analyze-log.sh
cat security-report.txt
