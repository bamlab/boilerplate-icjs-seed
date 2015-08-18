fs = require('fs')

srcPath = 'src'
wwwPath = 'www'
envPath = 'environments'
env = process.env.APP_ENV

configFilePath = "#{envPath}/env.#{env}.json"

if !fs.existsSync(configFilePath)
  errorMessage = "Config file for APP_ENV=#{env} does not exist."
  throw new Error(errorMessage)
else
  console.log("Building for #{env}")
  envConfig = require("../#{envPath}/env.#{env}.json")

config =
  srcPath: srcPath
  wwwPath: wwwPath
  env: env
  envConfig: envConfig
  index:
    src: "#{srcPath}/index.jade"
    dest: "#{wwwPath}"
  app:
    src: ["#{srcPath}/main.coffee", "#{srcPath}/**/*.module.coffee", "#{srcPath}/**/*.coffee"]
    concatFile: "app.js"
    dest: "#{wwwPath}/js"
  style:
    src: ["#{srcPath}/common/scss/main.scss"]
    concatFile: "app.css"
    dest: "#{wwwPath}/css"
  templates:
    src: ["#{srcPath}/**/*.jade", "!#{srcPath}/index.jade"]
    moduleName: envConfig.app_name
    concatFile: "templates.js"
    dest: "#{wwwPath}/js"
  assets:
    src: "#{srcPath}/assets/**"
    dest: "#{wwwPath}"
  vendors:
    concatFileJs: "vendors.js"
    concatFileCss: "vendors.css"
    destFonts: "#{wwwPath}/fonts"
    destJS: "#{wwwPath}/js"
    destCSS: "#{wwwPath}/css"

module.exports = config
