Router = (require 'express').Router


person = Router()

person.route '/'
  .get (req, res) ->
    res.send 'many people'

  .post (req, res) ->
    res.send "created person"

person.route '/:id'
  .get (req, res) ->
    res.send "person #{req.params.id}"

  .put (req, res) ->
    res.send "update person #{req.params.id}"

  .delete (req, res) ->
    res.send "delete person #{req.params.id}"