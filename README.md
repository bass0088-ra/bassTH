# 📁 Folder Generator by Category

A simple Windows batch script that automatically creates numbered folders with a custom prefix — perfect for organizing projects, assets, or any categorized file structure.

---

## ✨ Features

- Custom folder prefix (e.g. `PROJECT`, `AA`, `WORK`)
- Auto-padded 3-digit numbering (e.g. `001`, `002`, `099`)
- Skips folders that already exist (no overwrite)
- Input validation with clear error messages
- Shows a creation log and final count

---

## 🚀 Getting Started

### Requirements
- Windows OS (Windows 7 or later)
- No installation needed

### Usage

1. Download `folder-generator.bat`
2. Place it in the directory where you want folders to be created
3. Double-click to run, or execute via Command Prompt:

```
folder-generator.bat
```

4. Follow the prompts:

```
Enter folder prefix (e.g. AA, PROJECT, WORK): PROJECT
Enter start number (e.g. 1): 1
Enter end number (e.g. 99): 5
```

### Example Output

```
[CREATED] PROJECT-001
[CREATED] PROJECT-002
[SKIP]    PROJECT-003 already exists.
[CREATED] PROJECT-004
[CREATED] PROJECT-005

================================
 Done! 4 folder(s) created.
================================
```

---

## 📂 Folder Structure Result

```
your-directory/
├── folder-generator.bat
├── PROJECT-001/
├── PROJECT-002/
├── PROJECT-003/   ← already existed, skipped
├── PROJECT-004/
└── PROJECT-005/
```

---

## 🛠️ Customization Ideas

Want to extend this script? Here are some ideas:

- [ ] Support sub-folder creation inside each generated folder
- [ ] Add a config file for default prefix/range
- [ ] Export a log file of created folders
- [ ] Add color output using ANSI codes
- [ ] Support custom padding length (e.g. 4-digit: `0001`)
- [ ] Create a PowerShell version for cross-platform support

Feel free to fork and submit a Pull Request!

---

## 🤝 Contributing

1. Fork this repository
2. Create a new branch: `git checkout -b feature/your-feature-name`
3. Make your changes
4. Commit: `git commit -m "Add: your feature description"`
5. Push: `git push origin feature/your-feature-name`
6. Open a Pull Request

---

## 📄 License

This project is licensed under the [MIT License](LICENSE) — free to use, modify, and distribute.

---

## 🙋 FAQ

**Q: Can I run this outside the target folder?**  
A: The folders will be created in whichever directory the script is run from. Move the `.bat` file to your target location first.

**Q: What happens if I enter a start number greater than the end number?**  
A: The script will show an error and exit safely — no folders will be created.

**Q: Does it support more than 999 folders?**  
A: Currently the padding is fixed at 3 digits (`001`–`999`). For larger ranges, the numbering still works but won't be zero-padded beyond 3 digits.
