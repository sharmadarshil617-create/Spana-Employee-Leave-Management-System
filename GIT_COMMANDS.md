# 🎯 Quick Git & GitHub Commands

## ⚡ First Time Setup

### 1. Initialize Git (if not already done)
```bash
git init
```

### 2. Configure Git (first time only)
```bash
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"
```

### 3. Check status
```bash
git status
```

## 📤 Push to GitHub (First Time)

### 1. Add all files
```bash
git add .
```

### 2. Commit
```bash
git commit -m "Initial commit: Employee Leave Management System"
```

### 3. Create GitHub repository
Go to https://github.com/new and create a new repository

### 4. Add remote and push
```bash
# Replace with your actual repository URL
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## 🔄 Regular Updates (After Initial Push)

### 1. Check what changed
```bash
git status
```

### 2. Add files
```bash
# Add all changes
git add .

# Or add specific files
git add path/to/file.ts
```

### 3. Commit with message
```bash
git commit -m "Description of what you changed"
```

### 4. Push to GitHub
```bash
git push
```

## 📝 Good Commit Message Examples

```bash
git commit -m "Add employee CRUD operations"
git commit -m "Fix TypeScript build errors"
git commit -m "Update HR analytics dashboard"
git commit -m "Improve mobile responsiveness"
git commit -m "Add leave balance calculations"
```

## 🌿 Working with Branches

### Create and switch to new branch
```bash
git checkout -b feature/new-feature
```

### Switch between branches
```bash
git checkout main
git checkout feature/new-feature
```

### Push branch to GitHub
```bash
git push -u origin feature/new-feature
```

### Merge branch to main
```bash
git checkout main
git merge feature/new-feature
git push
```

## ⚠️ Common Issues & Solutions

### Issue: Permission denied (SSH)
**Solution:** Use HTTPS instead
```bash
git remote set-url origin https://github.com/USERNAME/REPO.git
```

### Issue: Files too large
**Solution:** Check .gitignore includes:
```
node_modules/
.next/
.env
```

### Issue: Want to undo last commit
**Solution:**
```bash
# Keep changes, undo commit
git reset --soft HEAD~1

# Discard changes and commit
git reset --hard HEAD~1
```

### Issue: Already have files in repo
**Solution:** Pull first, then push
```bash
git pull origin main --rebase
git push
```

## 🔍 Useful Commands

### View commit history
```bash
git log
git log --oneline  # Compact view
```

### See what changed
```bash
git diff  # Unstaged changes
git diff --staged  # Staged changes
```

### Remove file from git (keep local)
```bash
git rm --cached filename
```

### Discard local changes
```bash
git checkout -- filename  # Single file
git reset --hard  # All files
```

## 🚀 Deploy After Push

### Vercel (Automatic)
- Just push to GitHub
- Vercel auto-deploys main branch

### Manual Deploy
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy
vercel

# Deploy to production
vercel --prod
```

## 📦 .gitignore Template

Make sure your `.gitignore` includes:
```
# dependencies
node_modules
.pnp
.pnp.js

# testing
coverage

# next.js
.next
out
build

# env files
.env
.env*.local

# debug
npm-debug.log*
yarn-debug.log*

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts
```

## ✅ Pre-Push Checklist

Before pushing to GitHub:
- [ ] `npm run build` passes without errors
- [ ] No sensitive data in code (.env is in .gitignore)
- [ ] Commit message is descriptive
- [ ] Code is tested and working
- [ ] README.md is updated if needed

## 🆘 Emergency: Undo Everything

```bash
# Go back to last commit, lose all changes
git reset --hard HEAD

# Go back to last commit, keep changes
git reset --soft HEAD
```

## 🔗 GitHub Personal Access Token

If prompted for password when pushing:

1. Go to GitHub Settings → Developer settings → Personal access tokens
2. Generate new token (classic)
3. Select `repo` scope
4. Copy token
5. Use token as password when git asks

Or cache credentials:
```bash
git config --global credential.helper cache
```

---

## 📚 Learn More

- [Git Documentation](https://git-scm.com/doc)
- [GitHub Guides](https://guides.github.com)
- [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)

---

**🎉 You're ready to push to GitHub!**

Start with:
```bash
git add .
git commit -m "Initial commit"
git push -u origin main
```
