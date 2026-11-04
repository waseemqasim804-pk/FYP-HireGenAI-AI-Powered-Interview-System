// API Configuration - Auto-detects localhost vs production
const isLocalhost = window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1';

export const API_BASE_URL = isLocalhost
    ? 'http://localhost:8000'
    : 'https://20.98.82.167';

export const WS_BASE_URL = isLocalhost
    ? 'ws://localhost:8000'
    : 'wss://20.98.82.167';

console.log(`🌐 Environment: ${isLocalhost ? 'Localhost' : 'Production (Azure)'}`);
console.log(`📡 API URL: ${API_BASE_URL}`);
console.log(`🔌 WebSocket URL: ${WS_BASE_URL}`);
