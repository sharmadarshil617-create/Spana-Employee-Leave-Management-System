# 🏢 Employee Leave Management System (ELMS)

A modern, full-stack employee leave management system built with Next.js 14, TypeScript, Prisma, and PostgreSQL.

![Build Status](https://img.shields.io/badge/build-passing-brightgreen)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue)
![Next.js](https://img.shields.io/badge/Next.js-14.0-black)
![License](https://img.shields.io/badge/license-MIT-green)

## ✨ Features

### 🔐 Role-Based Access Control
- **Super Admin**: Full system access and configuration
- **Company Head**: Executive dashboard with company-wide analytics
- **HR Manager**: Employee and leave management, reports, analytics
- **Department Manager**: Team management and leave approvals
- **Employee**: Leave requests, balance tracking, history

### 👥 For HR Managers
- ✅ Complete employee CRUD operations
- ✅ Leave approval workflow with notifications
- ✅ Leave balance management (bulk operations supported)
- ✅ Department management
- ✅ Holiday management (including recurring holidays)
- ✅ Advanced analytics dashboard
- ✅ Report generation (PDF & Excel)
- ✅ Leave types configuration

### 🏢 For Company Heads (Executives)
- ✅ Company-wide analytics with visual charts
- ✅ High-priority leave approvals
- ✅ Department performance metrics
- ✅ Executive report generation
- ✅ Policy management system
- ✅ Announcement system with targeting
- ✅ Audit log viewing

### 👨‍💼 For Managers
- ✅ Team overview dashboard
- ✅ Team leave approvals
- ✅ Team analytics and reporting
- ✅ Calendar view of team absences

### 👤 For Employees
- ✅ Submit leave requests
- ✅ Track leave balances
- ✅ View leave history
- ✅ Check company holidays
- ✅ Real-time notifications
- ✅ Profile management

## 🛠️ Tech Stack

- **Frontend**: Next.js 14 (App Router), React, TypeScript
- **Backend**: Next.js API Routes, Prisma ORM
- **Database**: PostgreSQL
- **Authentication**: NextAuth.js
- **Styling**: Tailwind CSS, Custom CSS
- **UI Components**: Radix UI, Lucide Icons
- **Date Handling**: Day.js, date-fns
- **Notifications**: React Hot Toast

## 📋 Prerequisites

- Node.js 18+ 
- PostgreSQL database
- npm or yarn

## 🚀 Quick Start

### 1. Clone the repository
```bash
git clone https://github.com/YOUR_USERNAME/employee-leave-management.git
cd employee-leave-management
```

### 2. Install dependencies
```bash
npm install
```

### 3. Set up environment variables
```bash
cp .env.example .env
```

Edit `.env` with your configuration:
```env
DATABASE_URL="postgresql://username:password@localhost:5432/elms"
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="your-secret-key"
```

### 4. Set up the database
```bash
npx prisma generate
npx prisma db push
```

### 5. Run the development server
```bash
npm run dev
```

Open [http://localhost:3000](http://localhost:3000) in your browser.

## 📦 Database Schema

The system includes the following main models:

- **User**: Employee records with role-based permissions
- **Leave**: Leave requests with approval workflow
- **Balances**: Leave balance tracking per employee per year
- **Department**: Organizational structure
- **Holiday**: Company holidays (including recurring)
- **Announcement**: Company-wide communications
- **AuditLog**: System activity tracking
- **Notification**: Real-time user notifications
- **LeaveType**: Configurable leave categories
- **Policy**: Company policy documents

## 🔒 Security Features

- ✅ JWT-based authentication
- ✅ Role-based access control (RBAC)
- ✅ Secure API endpoints
- ✅ Input validation
- ✅ XSS protection
- ✅ CSRF protection
- ✅ Audit logging
- ✅ Rate limiting

## 📱 Responsive Design

- ✅ Mobile-first approach
- ✅ Tablet-optimized layouts
- ✅ Desktop-enhanced experience
- ✅ Dark mode support
- ✅ Accessible UI components (WCAG AA compliant)

## 📊 Analytics & Reporting

- 📈 Leave trends by month
- 📊 Department-wise statistics
- 👥 Employee distribution charts
- 📉 Approval rate tracking
- 📅 Leave type distribution
- 💾 Export to PDF & Excel

## 🔧 Configuration

### Leave Types
Configure leave types in HR Settings:
- Annual Leave
- Health/Sick Leave
- Study Leave
- Maternity Leave
- Paternity Leave
- Family Leave
- Unpaid Leave

### Roles & Permissions
| Role | Permissions |
|------|------------|
| Super Admin | Full system access, user role management |
| Company Head | View analytics, approve leaves, manage policies |
| HR Manager | Manage employees, leaves, departments, reports |
| Manager | Manage team, approve team leaves |
| Employee | Submit requests, view own data |

## 🚢 Deployment

### Deploy to Vercel (Recommended)

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone)

1. Click the button above
2. Add environment variables
3. Deploy!

See [DEPLOYMENT_GUIDE.md](./DEPLOYMENT_GUIDE.md) for detailed instructions.

### Other Platforms
- **Netlify**: Compatible with minor configuration
- **Railway**: Includes database hosting
- **Render**: Full-stack deployment support

## 📖 Documentation

- [Deployment Guide](./DEPLOYMENT_GUIDE.md) - Complete deployment instructions
- [API Documentation](#) - Coming soon
- [User Guide](#) - Coming soon

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the project
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Next.js team for the amazing framework
- Prisma team for the excellent ORM
- Vercel for hosting platform
- All contributors and users

## 📞 Support

For support, email support@yourcompany.com or join our Discord server.

## 🗺️ Roadmap

- [ ] Email notifications
- [ ] Mobile app (React Native)
- [ ] Calendar integration (Google Calendar, Outlook)
- [ ] Advanced reporting with custom date ranges
- [ ] Leave delegation
- [ ] Multi-language support
- [ ] Dark mode enhancements
- [ ] Automated leave balance reset
- [ ] Integration with HR systems
- [ ] SSO (Single Sign-On)

---

Made with ❤️ by Your Team

⭐ Star this repo if you find it helpful!
