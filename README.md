# Hosting a React.js (Vite) Website on cPanel — Step-by-Step Guide

Follow these simple, clean steps to host your React.js project built with **Vite** on a **cPanel** server.

---

## 🧩 Step 1 — Prepare Your Project
1. Open your project folder in VS Code or terminal.
2. Install all dependencies:
   ```bash
   npm install
   ```
3. Build the project for production:
   ```bash
   npm run build
   ```
4. A folder named **`dist`** will be created — this contains your production-ready website.

---

## 📂 Step 2 — Login to cPanel
1. Go to your hosting provider’s **cPanel**.
2. Open **File Manager**.
3. Navigate to:
   ```
   public_html/yourdomain.com/
   ```
   (Example: `/public_html/wynsync.tech/`)

---

## 🧹 Step 3 — Clean the Target Folder
1. If you’ve already hosted something earlier, delete all old files and folders inside the domain folder.
2. Make sure the folder is **empty** before uploading new files.

---

## 📤 Step 4 — Upload the Build Files
1. On your local system, open your project folder → open the **`dist`** folder.
2. **Compress** everything inside `dist` (not the folder itself) into a `.zip` file (e.g., `website.zip`).
3. In cPanel File Manager → Click **Upload** → upload `website.zip` to `/public_html/yourdomain.com/`.
4. After upload completes, select the zip file and click **Extract**.
5. Once extracted, you should see files like `index.html`, `assets/`, etc., directly inside `/public_html/yourdomain.com/`.

✅ Do **not** place files inside another subfolder like `/dist` or `/WynSync Website/`. Your `index.html` must be at the **root** of your domain folder.

---

## ⚙️ Step 5 — Add .htaccess File (Fix Route Refresh Issue)
If your website uses React Router (single-page app), you must add a `.htaccess` file to fix 404 errors when refreshing a route.

1. In cPanel File Manager, click **+ File** → name it `.htaccess` (make sure hidden files are visible).
2. Paste this code inside:

```apache
Options -MultiViews
RewriteEngine On
RewriteBase /

RewriteCond %{REQUEST_FILENAME} !-f
RewriteCond %{REQUEST_FILENAME} !-d
RewriteRule ^ index.html [L]
```

---

## 🧠 Step 6 — Fix Missing Images (Optional)
If some images are not showing:
- Make sure images are imported in your components:
  ```js
  import logo from './assets/logo.png'
  <img src={logo} alt="Logo" />
  ```
- Or place static files (like images, icons) in the **`public/`** folder before building.
- Rebuild using:
  ```bash
  npx vite build --force
  ```

---

## 🚀 Step 7 — Test the Website
1. Open your browser and visit your domain (e.g., `https://yourdomain.com`).
2. Test multiple pages and refresh them.
3. If everything loads correctly, the deployment is successful!

---

## ✅ Summary of Commands
```bash
npm install
npm run build
# If vite not found
npm install -g vite
# Force rebuild if images not updated
npx vite build --force
```

---

### 💡 Quick Tips
- Always upload contents **inside `dist`**, not the folder itself.
- Keep a `.htaccess` file for React Router apps.
- Use `public/` for static assets.
- Rebuild locally before every upload.

---

**Done! 🎉 Your React.js (Vite) website is now live on cPanel.**
