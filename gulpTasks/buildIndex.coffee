gulp = require 'gulp'
plumber = require 'gulp-plumber'
jade = require 'gulp-jade'

config = require './config.gulp.coffee'

gulp.task 'build:index', ->
  gulp.src config.index.src
  .pipe plumber()
  .pipe jade
    doctype: 'html'
  .pipe gulp.dest config.index.dest
