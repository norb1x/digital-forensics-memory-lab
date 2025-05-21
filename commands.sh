# Get image information for each memory dump
ls /home/student/Images/MemorySamples/windows/sample00*.bin | xargs -I{} ./vol.py -f {} imageinfo

# List running processes
ls /home/student/Images/MemorySamples/windows/sample00*.bin | xargs -I{} python2 /usr/local/bin/vol.py -f {} --profile=WinXPSP2x86 pslist

# Create a timeline of activity
vol.py -f sample001.bin --profile=WinXPSP2x86 timeliner

# Dump files from memory
vol.py -f sample001.bin --profile=WinXPSP2x86 dumpfiles -D dumpdir/

# Scan extracted files manually via VirusTotal
# https://www.virustotal.com/gui/home/upload
