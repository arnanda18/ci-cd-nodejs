const app = require('./user');
const supertest = require('supertest');
const request = supertest(app)

it('Call the /admin endpoint', async done => {
    const res = await request.get('/admin')
    expect(res.status).toBe(200)
    expect(res.text).toBe('Welcome to Admin Page :)')
    done()
})
it('Call the / endpoint', async done => {
    const res = await request.get('/')
    expect(res.status).toBe(200)
    expect(res.text).toBe('Aplikasi berjalan pada runtime NodeJs')
    done()
})
it('Call the /user endpoint', async done => {
    const res = await request.get('/user')
    expect(res.status).toBe(200)
    expect(res.text).toBe('In Here Page user!')
    done()
})