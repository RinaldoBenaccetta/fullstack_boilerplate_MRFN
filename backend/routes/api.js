'use strict'

module.exports = async function (fastify, opts) {
  fastify.get('/api', async function (request, reply) {
      return 'api route'
      // return { root: true }
  })
}
