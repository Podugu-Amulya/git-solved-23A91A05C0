// Environment-based monitoring for DevOps Simulator

const env = process.env.NODE_ENV || "production";
const debug = env === "development";

console.log("====================================");
console.log("DevOps Simulator - Monitor");
console.log(`Environment: ${env}`);
console.log(`Debug: ${debug ? "ENABLED" : "DISABLED"}`);
console.log("====================================");

setInterval(() => {
    console.log(`[${new Date().toISOString()}] === DETAILED HEALTH CHECK ===>`);
    console.log("✓ CPU usage: Normal");
    console.log("✓ Memory usage: Normal");
    console.log("✓ Disk space: Adequate");
    console.log("✓ Network: Stable");

    if (debug) {
        console.log("✓ Hot reload: Active");
        console.log("✓ Debug port: 9229");
    }

    console.log("System Status: HEALTHY\n");
}, 5000);
