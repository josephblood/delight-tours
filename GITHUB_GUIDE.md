# How to Push Delight Tours to GitHub

## Prerequisites
- Git installed on your computer
- GitHub account (create one at https://github.com if you don't have one)

---

## Step-by-Step Guide

### Step 1: Install Git (if not already installed)

**Check if Git is installed:**
```bash
git --version
```

**If not installed:**
- **Windows:** Download from https://git-scm.com/download/win
- **Mac:** Install via `brew install git` or from https://git-scm.com/download/mac
- **Linux:** `sudo apt-get install git` or `sudo yum install git`

---

### Step 2: Configure Git (First time only)

```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

---

### Step 3: Create a GitHub Repository

1. Go to https://github.com/new
2. **Repository name:** `delight-tours` (or any name you prefer)
3. **Description:** "Delight Tours - Uganda Travel & Tour Website"
4. **Visibility:** Choose Public or Private
5. **DO NOT** check "Add a README file" (we already have one)
6. Click **"Create repository"**

---

### Step 4: Push Your Code to GitHub

Open your terminal/command prompt and run these commands:

```bash
# Navigate to your project folder
cd C:\Users\CEO\AppData\Local\Claude-3p\local-agent-mode-sessions\1b3c08c0\00000000\2a143ea2\outputs

# Initialize Git repository
git init

# Add all files to staging
git add .

# Create first commit
git commit -m "Initial commit - Delight Tours website"

# Rename branch to main (modern standard)
git branch -M main

# Connect to your GitHub repository (REPLACE WITH YOUR URL)
git remote add origin https://github.com/YOUR_USERNAME/delight-tours.git

# Push code to GitHub
git push -u origin main
```

**Important:** Replace `YOUR_USERNAME` with your actual GitHub username!

---

### Step 5: Enter GitHub Credentials

When you run `git push`, you'll be asked to authenticate:

**Option A: Personal Access Token (Recommended)**
1. Go to GitHub Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name: "Delight Tours"
4. Check these permissions:
   - ✓ `repo` (Full control of private repositories)
   - ✓ `workflow` (if you plan to use GitHub Actions)
5. Click "Generate token"
6. **COPY THE TOKEN** (you won't see it again!)
7. When pushing, use:
   - Username: Your GitHub username
   - Password: Paste the token (not your actual password)

**Option B: GitHub CLI**
```bash
# Install GitHub CLI
# Windows: Download from https://cli.github.com
# Mac: brew install gh
# Linux: See https://github.com/cli/cli/blob/trunk/docs/install_linux.md

# Login to GitHub
gh auth login

# Follow the prompts to authenticate
```

---

### Step 6: Verify Upload

1. Go to your GitHub repository URL: `https://github.com/YOUR_USERNAME/delight-tours`
2. You should see all your files:
   - index.html
   - destinations.html
   - booking.html
   - contact.html
   - why-uganda.html
   - styles.css
   - server.js
   - package.json
   - README.md
   - And other files

---

## Quick Reference Commands

```bash
# Check repository status
git status

# Add specific files
git add filename.html

# Add all files
git add .

# Commit changes
git commit -m "Your commit message"

# Push to GitHub
git push

# Pull latest changes
git pull

# View commit history
git log
```

---

## Common Issues & Solutions

### Issue 1: "Git is not recognized as a command"
**Solution:** Install Git or add it to your PATH environment variable

### Issue 2: "Permission denied (publickey)"
**Solution:** Use HTTPS URL instead of SSH, or set up SSH keys

### Issue 3: "Authentication failed"
**Solution:** Use a Personal Access Token instead of your password

### Issue 4: "Repository already exists"
**Solution:** Use a different repository name or delete the existing one

### Issue 5: "Failed to push some refs"
**Solution:** 
```bash
git pull origin main --rebase
git push origin main
```

---

## Making Updates Later

When you make changes to your website:

```bash
# 1. Check what changed
git status

# 2. Add changes
git add .

# 3. Commit with a message
git commit -m "Updated booking form"

# 4. Push to GitHub
git push
```

---

## Next Steps After Pushing to GitHub

1. ✅ Your code is now backed up on GitHub
2. ✅ You can deploy to Railway using GitHub integration
3. ✅ Enable GitHub Pages for free hosting (alternative to Railway)
4. ✅ Collaborate with others if needed
5. ✅ Track version history

---

## Deploy to Railway After Pushing to GitHub

1. Go to https://railway.app
2. Sign up/Login with GitHub
3. Click "New Project"
4. Select "Deploy from GitHub repo"
5. Choose "delight-tours"
6. Railway will auto-deploy!
7. Get your live URL from Railway dashboard

---

**Need help?** Let me know which step you're stuck on!