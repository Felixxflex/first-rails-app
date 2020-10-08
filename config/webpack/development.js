process.env.NODE_ENV = process.env.NODE_ENV || 'development'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

const common = require('./webpack.common.js')();

module.exports = merge(common, {});