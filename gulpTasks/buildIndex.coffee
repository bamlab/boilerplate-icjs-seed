gulp = require 'gulp'
plumber = require 'gulp-plumber'
jade = require 'gulp-jade'
replace = require('gulp-replace-task')

config = require './config.gulp.coffee'

gulp.task 'build:index', ->
  gulp.src config.index.src
  .pipe plumber()
  .pipe jade
    doctype: 'html'
  .pipe(replace({patterns:config.envConfig.replace}))
  .pipe gulp.dest config.index.dest
