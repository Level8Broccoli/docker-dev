const server = Bun.serve({
	port: 4000,
	fetch(req) { 
		return new Response("Works"); 
	}, 
});

console.log(`Server runs on http://localhost:${server.port}`);
