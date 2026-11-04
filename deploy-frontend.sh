#!/bin/bash
# Complete Frontend Deployment Script

echo "🌐 Deploying Frontend to VM..."

# 1. Move frontend files
echo "📁 Moving frontend files..."
sudo rm -rf /var/www/hiregen-frontend
sudo mkdir -p /var/www/hiregen-frontend
sudo cp -r /home/azureuser/frontend-dist/* /var/www/hiregen-frontend/
sudo chown -R www-data:www-data /var/www/hiregen-frontend

# 2. Update Nginx configuration
echo "🔧 Updating Nginx config..."
sudo cp /home/azureuser/hiregen-nginx.conf /etc/nginx/sites-available/hiregen
sudo ln -sf /etc/nginx/sites-available/hiregen /etc/nginx/sites-enabled/hiregen
sudo nginx -t

# 3. Restart Nginx
echo "🔄 Restarting Nginx..."
sudo systemctl restart nginx

echo ""
echo "✅ Frontend Deployed Successfully!"
echo "🌐 Access your app at: http://20.98.82.167"
echo "🔍 Backend API at: http://20.98.82.167/health"
echo "📊 API Docs at: http://20.98.82.167/docs"
