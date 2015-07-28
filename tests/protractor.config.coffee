exports.config =
  specs: ['e2e/**/*.spec.coffee']
  framework: 'jasmine'
  jasmineNodeOpts:
    showColors: true
    defaultTimeoutInterval: 30000
    isVerbose: true
  allScriptsTimeout: 20000
  onPrepare: ->
    browser.driver.get 'http://localhost:8100'
