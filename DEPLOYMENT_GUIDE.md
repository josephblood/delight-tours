# Deployment Guide for Railway.app

## Quick Start - Deploy to Railway in 3 Steps

### Step 1: Prepare Your Project

Your project is already set up with all necessary files:
- ✅ `package.json` (defines dependencies)
- ✅ `server.js` (Express server)
- ✅ All HTML, CSS files
- ✅ `.gitignore` (excludes unnecessary files)

### Step 2: Deploy Using One of These Methods

#### Option A: Deploy via Railway CLI (Fastest)

1. **Install Railway CLI:**
```bash
npm install -g @railway/cli
```

2. **Login to Railway:**
```bash
railway login
```
(This will open a browser window to authenticate)

3. **Navigate to your project folder:**
```bash
cd /path/to/delight-tours
```

4. **Initialize and deploy:**
```bash
railway init
railway up
```

5. **Get your URL:**
```bash
railway domain
```

Your site will be live at: `https://your-project.up.railway.app`

---

#### Option B: Deploy via GitHub (Recommended for Continuous Deployment)

1. **Create a GitHub repository:**
   - Go to https://github.com/new
   - Create a new repository (e.g., "delight-tours")
   - Don't initialize with README (we already have one)

2. **Push your code to GitHub:**
```bash
cd /path/to/delight-tours
git init
git add .
git commit -m "Initial commit - Delight Tours website"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/delight-tours.git
git push -u origin main
```

3. **Deploy on Railway:**
   - Go to https://railway.app
   - Sign up/Login (can use GitHub account)
   - Click "New Project"
   - Select "Deploy from GitHub repo"
   - Choose your "delight-tours" repository
   - Railway will automatically detect Node.js and deploy
   - Wait 2-3 minutes for deployment

4. **Get your URL:**
   - Click "Settings" in your Railway project
   - Click "Generate Domain"
   - Your site will be at: `https://your-project.up.railway.app`

---

#### Option C: Deploy via Railway Dashboard (No Git Required)

1. **Zip your project files** (exclude node_modules folder)

2. **Go to Railway:**
   - Visit https://railway.app
   - Sign up or login
   - Click "New Project"
   - Select "Empty Project"

3. **Install Railway CLI and deploy:**
```bash
npm install -g @railway/cli
railway login
railway link
railway up
```

---

### Step 3: Configure Your Site (Optional)

1. **Custom Domain (if you have one):**
   - In Railway dashboard, go to Settings
   - Click "Add Custom Domain"
   - Enter your domain (e.g., delighttours.ug)
   - Follow DNS configuration instructions

2. **Environment Variables:**
   - Go to Variables tab in Railway
   - Add any custom variables (PORT is set automatically)

---

## Troubleshooting

### Issue: "Command not found: railway"
**Solution:** Install Railway CLI globally:
```bash
npm install -g @railway/cli
```

### Issue: Deployment fails
**Solution:** Check these:
- Ensure `package.json` has correct "start" script
- Verify all files are uploaded
- Check Railway logs in dashboard

### Issue: Site not loading after deployment
**Solution:** 
- Wait 2-3 minutes for initial deployment
- Check Railway logs for errors
- Ensure PORT environment variable is used in server.js

---

## Post-Deployment

### Test Your Site
Visit all pages to ensure they work:
- Home: `https://your-site.railway.app/`
- Destinations: `https://your-site.railway.app/destinations.html`
- Why Uganda: `https://your-site.railway.app/why-uganda.html`
- Booking: `https://your-site.railway.app/booking.html`
- Contact: `https://your-site.railway.app/contact.html`

### Update Your Site
If using GitHub method:
1. Make changes locally
2. Commit and push:
```bash
git add .
git commit -m "Update content"
git push
```
3. Railway automatically redeploys!

---

## Cost

- **Free Tier:** Railway offers $5 free credit per month
- **Typical usage:** This static site uses minimal resources (~$0-2/month)
- **Upgrade:** Available if you need more resources

---

## Support

- Railway Documentation: https://docs.railway.app
- Railway Discord: https://discord.gg/railway
- GitHub Issues: Create an issue in your repository

---

## Next Steps After Deployment

1. ✅ Test all pages and forms
2. ✅ Share your live URL with clients
3. ✅ Set up custom domain (optional)
4. ✅ Add real images to replace emoji placeholders
5. ✅ Set up email form handling (using FormSpree, Netlify Forms, etc.)
6. ✅ Add Google Analytics (optional)
7. ✅ Set up SSL certificate (automatic with Railway)

---

**Your site is ready to go live! Choose a deployment method above and follow the steps.**