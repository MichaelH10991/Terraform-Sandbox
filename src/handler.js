const config = require("./package.json")

exports.handler = (event, context) => {
    let name = config.name
    let version = config.version
    let description = config.description
    console.log(event, context, name, description, version)
}
