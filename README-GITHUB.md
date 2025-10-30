# Project cleanup for GitHub

This repository contains several example entry files (`lib/EX1.main.dart` .. `lib/EX4.main.dart`).

Before pushing to GitHub you can run the included cleanup script which removes local IDE and build artifacts so your repo stays small and clean.

How to use (PowerShell on Windows)

1. Open PowerShell in the project root.
2. Run the cleanup script:

```powershell
.\.scripts\clean_for_git.ps1
```

The script will remove (if present): `.idea/`, `*.iml`, `build/`, `.dart_tool/` and `pubspec.lock`.

Note: These files/folders are rebuildable by Flutter. Use this script only when you want to prepare a clean commit for GitHub.
