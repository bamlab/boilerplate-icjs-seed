module.exports = (config) ->
  config.set
    basePath: '../'
    frameworks: [
      'mocha'
      'chai'
      'sinon'
    ]
    files: [
      'www/js/vendor.js'
      'www/js/app.js'
      'tests/unit/**/*.spec.coffee'
    ]
    preprocessors:
      '**/*.coffee':  ['coffee']

    reporters: ['progress']
    port: 9876
    colors: true
    logLevel: config.LOG_INFO
    autoWatch: true
    browsers: ['Chrome']
    singleRun: true
