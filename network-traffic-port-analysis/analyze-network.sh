#!/bin/bash

OUTPUT_FILE="automated-network-report.txt"

echo "Network Traffic and Port Analysis Report" > "$OUTPUT_FILE"
echo "Generated on: $(date)" >> "$OUTPUT_FILE"
echo "========================================" >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== NETWORK INTERFACE ===" >> "$OUTPUT_FILE"
ip address show enp0s1 >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== ROUTING TABLE ===" >> "$OUTPUT_FILE"
ip route >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== LISTENING TCP AND UDP PORTS ===" >> "$OUTPUT_FILE"
ss -tuln >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== DNS RESOLUTION TEST ===" >> "$OUTPUT_FILE"
getent hosts example.com >> "$OUTPUT_FILE"

echo "" >> "$OUTPUT_FILE"
echo "=== HTTPS CONNECTIVITY TEST ===" >> "$OUTPUT_FILE"
curl -I https://example.com >> "$OUTPUT_FILE" 2>&1

echo "" >> "$OUTPUT_FILE"
echo "=== LOCALHOST NMAP SCAN ===" >> "$OUTPUT_FILE"
nmap localhost >> "$OUTPUT_FILE"

echo ""
echo "Analysis complete."
echo "Report saved to $OUTPUT_FILE"
