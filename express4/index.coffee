express = require 'express'


app = express()

api = express.Router()
app.use '/api', api

api.use '/person', (require './person')


app.listen 3000