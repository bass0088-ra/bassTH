# Changelog

All notable changes to this project will be documented in this file.

---

## [1.1.0] - 2026-06-02

### Added
- Skip logic: folders that already exist are no longer overwritten — a `[SKIP]` message is shown instead
- Input validation for empty prefix, empty start/end numbers, and invalid range (start > end)
- Creation counter — shows total number of folders successfully created at the end
- Per-folder creation log with `[CREATED]` and `[SKIP]` status labels
- Header banner and formatted summary box for cleaner output

### Changed
- All user-facing text changed from Thai to English
- Improved zero-padding logic using `000%%i` slice for reliability

### Fixed
- Script no longer crashes silently when invalid input is provided — exits with `exit /b 1` and a clear error message

---

## [1.0.0] - Initial Release

### Added
- Basic folder generation with custom prefix
- User prompt for start and end number
- 3-digit zero-padded folder naming (e.g. `PREFIX-001`)
- Completion message after all folders are created
