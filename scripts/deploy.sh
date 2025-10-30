```bash
#!/bin/bash
set -e

# DevOps Simulator Deployment Script (Merged Final)

DEPLOY_ENV=${DEPLOY_ENV:-production}

echo "==================================="
echo "DevOps Simulator - Deployment"
echo "==================================="

if [ "$DEPLOY_ENV" = "production" ]; then
    echo "Mode: Production"
    npm install --only=prod
    echo "Starting production deployment..."
    echo "✅ Production deployment complete!"

elif [ "$DEPLOY_ENV" = "development" ]; then
    echo "Mode: Development"
    npm install
    echo "Starting development environment..."
    npm run dev
    echo "✅ Development started!"

else
    echo "Mode: Experimental (AI Mode)"
    python3 scripts/ai-analyzer.py --analyze-deployment
    npm run start:ai
    echo "✅ AI deployment running!"
fi

echo "✅ Deployment finished successfully!"