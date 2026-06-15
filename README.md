# Cr4cker

Paints text on your GitHub contribution graph by generating backdated commits.

---

## How It Works

1. Edit `paint.sh` and set your `BASE_DATE` and `LETTER_MAP` pattern.
2. Run the script — it generates commits on the dates that correspond to filled cells in the graph.
3. Push to GitHub. The contribution graph renders your art.

---

## Usage

```bash
git clone https://github.com/TR4IS/Cr4cker.git
cd Cr4cker
# Edit BASE_DATE and LETTER_MAP in paint.sh
bash paint.sh
```

---

## Requirements

- Bash
- A GitHub repository to push to
- Git configured with your GitHub credentials

---

## Author

**TR4IS** — [github.com/TR4IS](https://github.com/TR4IS)
