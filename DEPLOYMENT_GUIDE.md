# Employee Leave Management System - Deployment Guide

## ✅ Build Status
**Your project builds successfully with zero TypeScript errors!**

## 🚀 Deploying to GitHub & Vercel

### Step 1: Prepare for GitHub

#### 1.1 Create `.gitignore` (Already exists, verify it includes):
```
# dependencies
/node_modules
/.pnp
.pnp.js

# testing
/coverage

# next.js
/.next/
/out/

# production
/build

# misc
.DS_Store
*.pem

# debug
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# local env files
.env
.env*.local

# vercel
.vercel

# typescript
*.tsbuildinfo
next-env.d.ts

# prisma
/prisma/.env
```

#### 1.2 Update your `.env.example` file:
Make sure sensitive data is NOT in `.env.example`. It should only have placeholders:

```env
# Database
DATABASE_URL="postgresql://username:password@host:5432/database"

# NextAuth
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="your-secret-key-here"

# Email (if using)
EMAIL_SERVER_USER=""
EMAIL_SERVER_PASSWORD=""
EMAIL_SERVER_HOST=""
EMAIL_SERVER_PORT=""
EMAIL_FROM=""
```

### Step 2: Initialize Git Repository

```bash
# If not already initialized
git init

# Add all files
git add .

# Commit
git commit -m "Initial commit: Employee Leave Management System"
```

### Step 3: Create GitHub Repository

1. Go to https://github.com/new
2. Create a new repository (e.g., "employee-leave-management")
3. **DO NOT** initialize with README, .gitignore, or license
4. Copy the remote URL

```bash
# Add remote origin
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push to GitHub
git branch -M main
git push -u origin main
```

---

## 🌐 Deploy to Vercel (Recommended - FREE)

### Step 1: Sign Up for Vercel
1. Go to https://vercel.com/signup
2. Sign up with GitHub

### Step 2: Import Your Project
1. Click "Add New Project"
2. Select your GitHub repository
3. Vercel will auto-detect it's a Next.js project

### Step 3: Configure Environment Variables
Add these in Vercel dashboard under "Environment Variables":

```
DATABASE_URL=your-postgresql-connection-string
NEXTAUTH_URL=https://your-domain.vercel.app
NEXTAUTH_SECRET=generate-a-secret-key
```

**To generate NEXTAUTH_SECRET:**
```bash
openssl rand -base64 32
```

### Step 4: Deploy
1. Click "Deploy"
2. Wait for deployment to complete (2-3 minutes)
3. Your app will be live at `https://your-project.vercel.app`

---

## 🗄️ Database Setup

### Option 1: Neon (Recommended - FREE PostgreSQL)
1. Go to https://neon.tech
2. Create a free account
3. Create a new project
4. Copy the connection string
5. Add it to Vercel environment variables as `DATABASE_URL`

### Option 2: Supabase (FREE PostgreSQL)
1. Go to https://supabase.com
2. Create a new project
3. Go to Settings → Database
4. Copy the connection pooler string
5. Add it to Vercel environment variables

### Option 3: Railway (FREE with usage limits)
1. Go to https://railway.app
2. Create a PostgreSQL database
3. Copy connection string
4. Add to Vercel environment variables

---

## 📦 After Deployment

### Run Database Migrations
After deployment, you need to set up your database:

1. Install Vercel CLI:
```bash
npm i -g vercel
```

2. Link to your project:
```bash
vercel link
```

3. Run Prisma migrations:
```bash
vercel env pull .env.production
npx prisma generate
npx prisma db push
```

Or directly from Vercel dashboard:
- Go to Settings → Functions
- Add build command: `prisma generate && prisma db push && next build`

---

## 🔐 Security Checklist

- ✅ `.env` is in `.gitignore`
- ✅ No secrets in `.env.example`
- ✅ Strong `NEXTAUTH_SECRET` generated
- ✅ Database connection string is secure
- ✅ Environment variables set in Vercel

---

## 📱 Features Implemented

### For All Users:
- ✅ Authentication with NextAuth
- ✅ Role-based access control
- ✅ Dashboard with leave statistics
- ✅ Leave request submission
- ✅ Leave balance tracking

### For HR:
- ✅ Employee management (CRUD)
- ✅ Leave approval workflow
- ✅ Department management
- ✅ Holiday management
- ✅ HR Analytics dashboard
- ✅ Reports generation

### For Company Head (Executive):
- ✅ Company-wide analytics
- ✅ Leave approval system
- ✅ Department overview
- ✅ Announcements management
- ✅ Executive reports

### For Managers:
- ✅ Team management
- ✅ Leave approvals for team
- ✅ Team analytics

### For Employees:
- ✅ Submit leave requests
- ✅ View leave history
- ✅ Check leave balances
- ✅ View company holidays

---

## 🐛 Troubleshooting

### Build Fails
```bash
# Clear cache and rebuild
rm -rf .next
npm run build
```

### Database Connection Issues
- Check your `DATABASE_URL` is correct
- Ensure database is accessible from Vercel IPs
- Try using connection pooler (for Supabase/Neon)

### Authentication Issues
- Verify `NEXTAUTH_URL` matches your deployment URL
- Check `NEXTAUTH_SECRET` is set
- Clear browser cookies and try again

---

## 📝 Post-Deployment Setup

1. **Create First Admin User:**
   - Register through the signup page
   - Manually update their role in the database to `SUPER_ADMIN`

2. **Add Departments:**
   - Login as admin
   - Go to HR → Departments
   - Create your organization's departments

3. **Add Leave Types:**
   - Go to HR → Settings
   - Configure leave types and balances

4. **Add Employees:**
   - Go to HR → Employees
   - Add employee records
   - Assign departments and roles

---

## 🔗 Useful Links

- **Vercel Dashboard:** https://vercel.com/dashboard
- **Neon Database:** https://console.neon.tech
- **Prisma Docs:** https://www.prisma.io/docs
- **Next.js Docs:** https://nextjs.org/docs

---

## 💡 Tips

1. **Use Environment Preview:** Vercel provides preview deployments for each git branch
2. **Enable Analytics:** Add Vercel Analytics for free
3. **Set up Custom Domain:** Add your own domain in Vercel settings
4. **Monitor Logs:** Use Vercel dashboard to monitor errors
5. **Automatic Deploys:** Every push to main branch auto-deploys

---

## 📞 Need Help?

- Vercel Support: https://vercel.com/support
- Next.js Discord: https://nextjs.org/discord
- Prisma Discord: https://pris.ly/discord

---

## 🎉 Your App is Production Ready!

The TypeScript errors have been fixed and your build passes successfully. You're ready to deploy to Vercel!

**Next Steps:**
1. Push to GitHub ✓
2. Connect to Vercel ✓
3. Add environment variables ✓
4. Deploy! 🚀
