srcPath = 'src'
wwwPath = 'www'

config =
  srcPath: srcPath
  wwwPath: wwwPath
  index:
    src: "#{srcPath}/index.jade"
    dest: "#{wwwPath}"
  app:
    src: ["#{srcPath}/main.coffee", "#{srcPath}/**/*.module.coffee", "#{srcPath}/**/*.coffee"]
    concatFile: "app.js"
    dest: "#{wwwPath}/js"
  style:
    src: ["#{srcPath}/**/*.scss"]
    concatFile: "app.css"
    dest: "#{wwwPath}/css"
  templates:
    src: ["#{srcPath}/**/*.jade", "!#{srcPath}/index.jade"]
    moduleName: "templates"
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
