const express = require('express')
const app = express()

app.get('/' , (req,res) => {
    res.json({status: 200, message: 'Hello world'})
})

app.listen(4000, () => {
    console.log('Project is running at port 4000...')
}) 