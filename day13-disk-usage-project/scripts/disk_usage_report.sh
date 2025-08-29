#!/bin/bash
# -----------------------------------------------------------------------------
# Script Name : disk_usage_report.sh
# Description : Generates disk usage report using df and du commands.
# Author      : Nahid Hasan
# Date        : 2025-08-29
# -----------------------------------------------------------------------------

# Output file path
REPORT_FILE="$HOME/day13-disk-usage-project/reports/disk_usage_report.txt"

# Create reports directory if not exists
mkdir -p "$(dirname "$REPORT_FILE")"

# Start writing the report
echo "==========================" > "$REPORT_FILE"
echo " Disk Usage Report" >> "$REPORT_FILE"
echo " Generated on: $(date)" >> "$REPORT_FILE"
echo "==========================" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Disk space usage (human-readable)
echo "🔹 Disk Free Space (df -h):" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Disk usage by home directory (human-readable)
echo "🔹 Disk Usage by Home Directory (du -sh ~/*):" >> "$REPORT_FILE"
du -sh ~/* >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Optional: Top 10 largest directories
echo "🔹 Top 10 Largest Directories in Home:" >> "$REPORT_FILE"
du -sh ~/* 2>/dev/null | sort -hr | head -n 10 >> "$REPORT_FILE"

echo ""
echo "✅ Disk usage report generated at $REPORT_FILE"
