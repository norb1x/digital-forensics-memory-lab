# Digital Forensics Lab Report – Lab 3

## Objective
To analyze a Windows memory image and identify potential signs of malware and user activity.

## Key Activities
- Identified system version and profile using Volatility
- Listed active processes (pslist)
- Extracted NTLM hashes and checked known values (e.g., hash for "password")
- Scanned the explorer.exe binary with VirusTotal (1/58 detection – likely false positive)
- Analyzed open network sockets and related processes
- Generated a timeline of system activity using timeliner

## Findings
- No LM hashes present – the system uses a more secure hash mechanism
- NTLM hash for Administrator corresponds to a known weak password ("password")
- Main activity observed between November 23–27, 2012
- Common Windows processes identified (explorer.exe, svchost.exe, lsass.exe, etc.)
- Some suspicious connections found to local and private IPs (e.g., 127.0.0.1, 172.16.*.*)
- Only one AV engine flagged explorer.exe as suspicious – likely a heuristic false positive

## Notes
Memory dump files and binary data are intentionally excluded to avoid leaking sensitive information.
