gulp = require 'gulp'

config = require './config.gulp.coffee'

gulp.task 'build:index', ->
  gulp.src config.index.src
  .pipe gulp.dest config.index.dest
