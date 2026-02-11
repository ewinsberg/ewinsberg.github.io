# ewinsberg.github.io

Personal academic website — Eric B. Winsberg.

Hosted on [GitHub Pages](https://pages.github.com/) at **https://ewinsberg.github.io**.

## Repo setup (one-time)

1. **Create the repository on GitHub**
   - Go to [github.com/new](https://github.com/new)
   - Repository name: **ewinsberg.github.io** (must match exactly for GitHub Pages)
   - Public, no README/license (you already have files locally)

2. **From your machine** (in PowerShell or Git Bash, with [Git](https://git-scm.com/) installed):

   ```powershell
   cd c:\Users\ew652\Documents\webpage

   git init
   git add .
   git commit -m "Initial commit: academic website"

   git branch -M main
   git remote add origin https://github.com/ewinsberg/ewinsberg.github.io.git
   git push -u origin main
   ```

3. **GitHub Pages**
   - On the repo page: **Settings → Pages**
   - Source: **Deploy from a branch**
   - Branch: **main**, folder **/ (root)** → Save

After a minute or two the site will be live at **https://ewinsberg.github.io**.

## Updating the site

After editing files:

```powershell
cd c:\Users\ew652\Documents\webpage
git add .
git commit -m "Update site"
git push
```
