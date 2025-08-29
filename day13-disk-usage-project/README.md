# Day 13: Disk Usage Project

This project demonstrates how to monitor disk usage in Linux using `df -h` and `du -sh`.  
It generates a disk usage report and shows top directories consuming space.

## Project Structure
```
disk-usage-project/
├── scripts/
│ └── disk_usage_report.sh
├── reports/
│ └── sample_report.txt
├── README.md
└── .gitignore
```
## Usage

### 1. Make the script executable:

```
chmod +x scripts/disk_usage_report.sh
```
### 2. Run the script:

```
bash scripts/disk_usage_report.sh
```
### 3. View the generated report:
```
cat ~/disk-usage-project/reports/disk_usage_report.txt
```
## Features
* Human-readable disk free space using `df -h`

* Human-readable directory sizes using `du -sh`

* Lists top 10 largest directories in the home directory

* Generates a timestamped report automatically
