# 🔐 How to Become Admin or Company Boss

Your Spana ELMS uses Google OAuth for authentication. By default, all users are assigned the `USER` role (Employee). To access admin features, you need to change your role in the database.

---

## 🚀 **Method 1: Using TypeScript Script (Recommended)**

### Step 1: Install ts-node (if not installed)
```bash
npm install -D ts-node
```

### Step 2: Run the script with your email
```bash
# Make yourself SUPER_ADMIN (full system access)
npx ts-node scripts/set-admin.ts your.email@domain.com SUPER_ADMIN

# OR make yourself COMPANY_HEAD (executive/boss)
npx ts-node scripts/set-admin.ts your.email@domain.com COMPANY_HEAD
```

### Step 3: Sign out and sign in again
- Click your profile in the top right
- Click "Sign out"
- Sign in again with Google
- You should now see the Admin/Executive dashboard!

---

## 🗄️ **Method 2: Using Prisma Studio (Visual Tool)**

### Step 1: Open Prisma Studio
```bash
npx prisma studio
```

### Step 2: In the browser window that opens:
1. Click on the **"User"** table
2. Find your user by email
3. Click on your user row
4. Change the **"role"** field to one of:
   - `SUPER_ADMIN` - Full system access + Admin Panel + Leave Approvals
   - `COMPANY_HEAD` - Executive Dashboard + Leave Approvals
   - `ADMIN` - Admin Dashboard
   - `HR` - HR Dashboard
   - `MANAGER` - Manager Dashboard
5. Click **"Save 1 change"**

### Step 3: Sign out and sign in again

---

## 💻 **Method 3: Using SQL Directly**

### Step 1: Connect to your PostgreSQL database
```bash
# Use your DATABASE_URL from .env
psql <your-database-url>
```

### Step 2: Run this SQL (replace the email)
```sql
-- Make yourself SUPER_ADMIN
UPDATE "User" 
SET role = 'SUPER_ADMIN' 
WHERE email = 'darshil@yourdomain.com';

-- Check it worked
SELECT name, email, role FROM "User" WHERE email = 'darshil@yourdomain.com';
```

### Step 3: Sign out and sign in again

---

## 🎭 **Available Roles**

| Role | Access | Portal URL |
|------|--------|-----------|
| `SUPER_ADMIN` | **Everything** + Admin Panel + Leave Approvals | `/admin` |
| `COMPANY_HEAD` | Executive Dashboard + Leave Approvals | `/executive` |
| `ADMIN` | Admin Dashboard | `/dashboard` |
| `HR` | HR Dashboard with employee management | `/hr` |
| `MANAGER` | Manager Dashboard for team management | `/manager` |
| `USER` | Employee Portal (default) | `/portal` |

---

## ✅ **What You Get as SUPER_ADMIN**

When you sign in as `SUPER_ADMIN`, you'll see:

### Sidebar Navigation:
- ✅ **Admin Panel** - System overview
- ✅ **Leave Requests** - Approve/reject employee leaves ⭐ NEW
- ✅ **Users** - Manage all users
- ✅ **Roles** - Role management
- ✅ **Audit Logs** - System activity tracking
- ✅ **System** - System settings
- ✅ **HR Dashboard** - Access to HR features

### Leave Requests Page Features:
- 📊 Stats: Total, Pending, Approved, Rejected
- 🔍 Filter by status
- ✅ One-click approve
- ❌ Reject with reason
- 💰 Auto-update leave balances
- 📝 Audit log tracking

---

## 🐛 **Troubleshooting**

### "I changed my role but still see Employee Portal"
- Make sure you **signed out completely**
- Clear your browser cache
- Sign in again with Google

### "Script shows 'User not found'"
- Make sure you've **logged in at least once** with Google OAuth
- Check the email matches exactly what you used to sign in
- Verify your .env has the correct `DATABASE_URL`

### "I see 'Access Denied' error"
- Check your `ALLOWED_DOMAIN` in .env
- Your email must match the allowed domain

---

## 📧 **Example Commands**

```bash
# Using your actual email (Darshil's example)
npx ts-node scripts/set-admin.ts darshil@spanaelms.com SUPER_ADMIN

# OR for company boss
npx ts-node scripts/set-admin.ts darshil@spanaelms.com COMPANY_HEAD
```

---

## 🎉 **Success!**

After following any of these methods and signing in again, you should see:

1. **Sidebar Changes** - New admin/executive menu items
2. **Leave Requests** - New option in sidebar
3. **Profile Badge** - Your role badge shows "Super Admin" or "Executive"

Enjoy your admin powers! 🚀
