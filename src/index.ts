Bun.serve({port: 4321, hostname: "demo.com", fetch(req) { return new Response("Works"); }, });
