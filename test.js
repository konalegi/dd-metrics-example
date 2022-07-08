const StatsD = require('hot-shots')

const client = new StatsD({
    globalTags: { env: process.env.NODE_ENV },
});


console.log('sending metrics')

client.histogram('graphql_gateway_downstream_test_metrics', 10.0)
