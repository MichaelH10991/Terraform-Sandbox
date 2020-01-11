const config = require("./package.json")

const handler = (event, context) => {
    let name = config.name
    let version = config.version
    let description = config.description
    console.log(`event: ${event}, context: ${context} Project name: ${name}, Project description: ${description}, v${version}`)

    for (let [key, value] of Object.entries(config)) {
        if (typeof value === 'object') {
            console.log(`${key}:`)
            for (let [key1, value1] of Object.entries(value)) {
                console.log(`\t[${key1}: ${value1}],`)
            }
        } else {
            console.log(`${key}:  ${value}`)
        }
    }
}

handler({}, {})

module.exports = handler


