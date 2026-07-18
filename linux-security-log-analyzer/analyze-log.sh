#!/bin/bash

LOG_FILE="sample-auth.log"
REPORT_FILE="security-report.txt"

echo "Linux Security Log Analysis Report" > "$REPORT_FILE"
echo "Generated on: $(date)" >> "$REPORT_FILE"
echo "----------------------------------" >> "$REPORT_FILE"

FAILED_COUNT=$(grep -c "Failed password" "$LOG_FILE")

echo "" >> "$REPORT_FILE"
echo "Total failed login attempts: $FAILED_COUNT" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "Failed login entries:" >> "$REPORT_FILE"
grep "Failed password" "$LOG_FILE" >> "$REPORT_FILE"

echo "" >> "$REPORT_FILE"
echo "Suspicious IP addresses:" >> "$REPORT_FILE"
grep "Failed password" "$LOG_FILE" \
  | awk '{for(i=1;i<=NF;i++) if($i=="from") print $(i+1)}' \
  | sort \
  | uniq -c \
  | sort -nr >> "$REPORT_FILE"

echo ""
echo "Analysis complete."
echo "Report saved to $REPORT_FILE"
