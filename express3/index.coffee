express = require 'express'
require 'express-namespace'


app = express()

app.namespace '/api', ->

    app.namespace '/person', ->

      app.get '/', (req, res) ->
        res.send 'many people'

      app.post '/', (req, res) ->
        res.send "created person"

      app.get '/:id', (req, res) ->
        res.send "person #{req.params.id}"

      app.put '/:id', (req, res) ->
        res.send "update person #{req.params.id}"

      app.delete '/:id', (req, res) ->
        res.send "delete person #{req.params.id}"


app.listen 3000