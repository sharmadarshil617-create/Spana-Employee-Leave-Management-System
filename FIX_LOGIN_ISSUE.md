# 🔧 Fix Login Redirect Loop Issue

## Problem Found
Your Neon database was empty (no tables), so NextAuth couldn't save user data during login.

## ✅ Solution Applied
I've already created all the required database tables using `prisma db push`.

## Next Steps

### Step 1: Close Your Current Dev Server
1. Go to the terminal where `npm run dev` is running
2. Press `Ctrl + C` to stop it
3. Wait for it to fully stop

### Step 2: Regenerate Prisma Client & Restart
Run these commands in your terminal:

```powershell
cd c:\Spana.elms\spana-yt
npx prisma generate
npm run dev
```

**OR** use the automated script I created:

```powershell
cd c:\Spana.elms\spana-yt
.\restart-dev.ps1
```

### Step 3: Clear Browser Data
1. Open your browser
2. Press `Ctrl + Shift + Delete`
3. Select:
   - ✅ Cookies and other site data
   - ✅ Cached images and files
4. Time range: **Last hour**
5. Click **Clear data**

### Step 4: Try Logging In Again
1. Go to: http://localhost:3000/login
2. Click "Sign in with Google"
3. Select your Gmail account
4. You should now be redirected to the portal!

---

## What Was Fixed

### Before:
```
❌ Empty Neon database
❌ No User, Account, Session tables
❌ NextAuth couldn't save user data
❌ Login redirect loop
```

### After:
```
✅ All database tables created
✅ NextAuth can save users
✅ OAuth works properly
✅ Login should work!
```

---

## If Login Still Fails

### Check 1: Verify Database Tables Were Created

Run this command:
```powershell
npx prisma studio
```

This opens Prisma Studio. You should see these tables:
- User
- Account
- Session
- Leave
- Balances
- Department
- etc.

### Check 2: Check Google OAuth Redirect URI

Make sure your Google OAuth app has this redirect URI:
```
http://localhost:3000/api/auth/callback/google
```

To check:
1. Go to: https://console.cloud.google.com/apis/credentials
2. Click on your OAuth 2.0 Client ID
3. Under "Authorized redirect URIs", you should see the URI above

### Check 3: Verify Your Email Domain

Your `.env` has:
```
ALLOWED_DOMAIN=@gmail.com
```

Make sure you're signing in with a Gmail account (ends with @gmail.com).

---

## Terminal Commands Reference

### Restart Everything Fresh:
```powershell
# Stop dev server (Ctrl+C)
# Then run:
npx prisma generate
npm run dev
```

### Check Database Connection:
```powershell
npx prisma db pull
```

### View Database in Browser:
```powershell
npx prisma studio
```

### Reset Database (WARNING: Deletes all data):
```powershell
npx prisma migrate reset
```

---

## 🎉 Success Indicators

After following the steps above, you should see:

1. **In Terminal**: `✓ Ready in X ms` from Next.js
2. **In Browser**: After login, you're redirected to `/portal` (not back to `/login`)
3. **User Created**: Check Prisma Studio - you should see your user in the User table

---

## Need More Help?

If you're still having issues:

1. Check the browser console (F12 → Console tab) for errors
2. Check the terminal for any red error messages
3. Take a screenshot of any errors you see
4. Share the error messages for further troubleshooting
