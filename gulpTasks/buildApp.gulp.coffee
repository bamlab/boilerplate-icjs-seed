gulp = require 'gulp'
sourcemaps = require 'gulp-sourcemaps'
coffee = require 'gulp-coffee'
annotate = require 'gulp-ng-annotate'
concat = require 'gulp-concat'
plumber = require 'gulp-plumber'
replace = require('gulp-replace-task')
config = require './config.gulp.coffee'


gulp.task 'build:app', ->
  gulp.src config.app.src
  .pipe plumber()
  .pipe sourcemaps.init()
  .pipe coffee
    bare: true
  .pipe(replace({patterns:config.envConfig.replace}))
  .pipe concat config.app.concatFile
  .pipe sourcemaps.write()
  .pipe annotate()
  .pipe gulp.dest config.app.dest
