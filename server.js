const express = require('express');
const path = require('path');
const app = express();

// Set the port from environment variable or default to 3000
const PORT = process.env.PORT || 3000;

// Serve static files (HTML, CSS, JS, images)
app.use(express.static(__dirname));

// Route for home page
app.get('/', (req, res) => {
    res.sendFile(path.join(__dirname, 'index.html'));
});

// Route for destinations page
app.get('/destinations', (req, res) => {
    res.sendFile(path.join(__dirname, 'destinations.html'));
});

// Route for why-uganda page
app.get('/why-uganda', (req, res) => {
    res.sendFile(path.join(__dirname, 'why-uganda.html'));
});

// Route for booking page
app.get('/booking', (req, res) => {
    res.sendFile(path.join(__dirname, 'booking.html'));
});

// Route for contact page
app.get('/contact', (req, res) => {
    res.sendFile(path.join(__dirname, 'contact.html'));
});

// 404 handler
app.use((req, res) => {
    res.status(404).sendFile(path.join(__dirname, 'index.html'));
});

// Start the server
app.listen(PORT, () => {
    console.log(`Delight Tours server is running on port ${PORT}`);
    console.log(`Visit http://localhost:${PORT} to view the website`);
});
