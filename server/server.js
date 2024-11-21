const Fastify = require('fastify');
const fastifyCORS = require('@fastify/cors');

const server = Fastify();

server.register(fastifyCORS, {
  origin: '*',
  credentials: true,
});

server.get('/', async (request, reply) => {
  return { message: 'Hello from Fastify!' };
});

server.listen({port: 3030, host: '192.168.1.2' }, (err, address) => {
  if (err) {
    console.error(err);
    process.exit(1);
  }
  console.log(`Server listening at ${address}`);
});
