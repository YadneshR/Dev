# 📂 Archive Unused Files Script

This project contains a **Bash script** that automatically finds and archives large files from your `~/Downloads` directory.  
It is useful when your downloads folder gets cluttered with big files, and you want them compressed and moved to an `archive` folder.

---

## ✨ Features
- ✅ Checks if the target directory exists.
- ✅ Creates an `archive` folder automatically if missing.
- ✅ Finds files larger than **20 MB**.
- ✅ Compresses them using `gzip`.
- ✅ Moves them safely into the `archive` folder.
- ✅ Can be automated using **cron jobs**.

---

## 📂 Project Structure
Archive_Unused_Files/
├── archive_project.sh # Main script
├── README.md # Documentation
└── archive/ # Created automatically, contains archived files


---

## ⚙️ Script Variables

The following variables are defined inside `archive_project.sh`:

| Variable | Default Value | Description |
|----------|---------------|-------------|
| `BASE`   | `/home/username/Downloads` | Base directory to scan for large files |
| `DAYS`   | `10` | Reserved for future use (e.g., delete old files) |
| `DEPTH`  | `1` | Directory depth to search |
| `RUN`    | `0` | Internal flag (0 = run compression) |

> 🔧 You can edit these values inside the script to customize its behavior.

---

## 🚀 Setup Instructions

### 1. Clone the repository
```bash
git clone git@github.com:YadneshR/Dev.git
cd Archive_Unused_Files
2. Make the script executable
chmod +x archive_project.sh
3. Run the script manually
./archive_project.sh
4. Expected output
When the script finds files larger than 20MB, you will see messages like:

[2025-09-05 23:00:00] archiving /home/username/Downloads/largefile.iso ==> /home/username/Downloads/archive
The file will be:

Compressed to .gz

Moved into the archive/ directory

🕒 Automating with Cron
You can automate the script using cron jobs.

1. Open the crontab editor
crontab -e
2. Add a job to run daily at 11 PM
0 23 * * * /home/your-username/Shellpractice/projects/Archive_Unused_Files/archive_project.sh >> /home/your-username/archive_log.txt 2>&1
0 23 * * * → Run at 23:00 (11 PM) every day

Output logs are saved in archive_log.txt

Errors (if any) are also redirected into the same log file

3. Example: Run weekly on Sunday at 2 AM
0 2 * * 0 /home/your-username/Shellpractice/projects/Archive_Unused_Files/archive_project.sh >> /home/your-username/archive_log.txt 2>&1
🔍 Verify Cron Job
To check if your cron job is installed correctly:

crontab -l
To see script logs:

cat ~/archive_log.txt
🛠️ Troubleshooting
directory does not exist error → Make sure the BASE directory in the script matches your actual downloads folder.

Permission denied → Ensure the script is executable (chmod +x archive_project.sh).

Cron job not running → Check cron service is active:

systemctl status cron
✅ Future Improvements
Add option to delete files older than $DAYS.

Add support for excluding certain file types (e.g., .jpg or .png).

Add email notifications after archiving.

Add configuration via an external .conf file.

🧑‍💻 Author
Created by Yadnesh

Version: 0.0.1

License: MIT


