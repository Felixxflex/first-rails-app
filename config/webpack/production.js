process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')

module.exports = environment.toWebpackConfig()

module.exports = {
    module: {
        rules: [{
            test: /\.css$/i,
            use: ['style-loader', 'css-loader'],
        }, ],
        mode: 'development'
    },
};
var path = require('path');

module.exports = {
    entry: './main.ts',
    resolve: {
        extensions: ['.webpack.js', '.web.js', '.ts', '.js']
    },
    module: {
        rules: [
            { test: /.ts$/, loader: 'ts-loader' }
        ]
    },
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, 'dist')
    }
};