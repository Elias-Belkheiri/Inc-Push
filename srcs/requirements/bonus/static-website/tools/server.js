const express = require('express');
const app = express();

// Serve static files from the 'public' directory
app.use(express.static('site'));

// Start the server
const port = 3000;
app.listen(port, () => {
  console.log(`Server is listening on port ${port}`);
});
