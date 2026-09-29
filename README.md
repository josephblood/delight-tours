# Delight Tours - Uganda Travel & Tour Website

A beautiful, responsive multi-page website for Delight Tours showcasing Uganda's premier travel destinations including gorilla trekking, wildlife safaris, and adventure tours.

## Features

- **Multi-page Design**: Separate pages for Home, Destinations, Why Uganda, Booking, and Contact
- **Responsive Layout**: Mobile-friendly design that works on all devices
- **Booking System**: Comprehensive booking form with tour packages and date selection
- **Beautiful UI**: Modern design with smooth animations and hover effects
- **SEO Friendly**: Structured HTML with proper meta tags

## Pages

1. **Home (index.html)**: Welcome page with featured tours and testimonials
2. **Destinations (destinations.html)**: Showcase of 9 beautiful Uganda destinations
3. **Why Uganda (why-uganda.html)**: Information about Uganda's unique features
4. **Booking (booking.html)**: Complete booking form with tour packages
5. **Contact (contact.html)**: Contact information and inquiry form

## Destinations Featured

- Bwindi Impenetrable National Park (Gorilla Trekking)
- Murchison Falls National Park
- Queen Elizabeth National Park
- Rwenzori Mountains
- Lake Bunyonyi
- Jinja & The Nile
- Kibale National Park
- Lake Mburo National Park
- Kidepo Valley National Park

## Local Development

### Prerequisites
- Node.js (v14 or higher)
- npm

### Installation

1. Clone or download this repository
2. Navigate to the project directory
3. Install dependencies:
```bash
npm install
```

4. Start the server:
```bash
npm start
```

5. Open your browser and visit:
```
http://localhost:3000
```

## Deployment to Railway.app

### Method 1: Using Railway CLI

1. Install Railway CLI:
```bash
npm install -g @railway/cli
```

2. Login to Railway:
```bash
railway login
```

3. Initialize a new project:
```bash
railway init
```

4. Deploy:
```bash
railway up
```

### Method 2: Using GitHub (Recommended)

1. Create a GitHub repository and push this code
2. Go to [Railway.app](https://railway.app)
3. Sign up or log in
4. Click "New Project"
5. Select "Deploy from GitHub repo"
6. Choose your repository
7. Railway will automatically detect the Node.js app and deploy it
8. Your site will be live at: `https://your-project-name.up.railway.app`

### Method 3: Using Railway Dashboard

1. Go to [Railway.app](https://railway.app)
2. Create a new project
3. Choose "Deploy from GitHub" or "Empty Project"
4. If empty project, connect your GitHub repo or use the CLI
5. Railway will automatically:
   - Detect package.json
   - Install dependencies
   - Run `npm start`
   - Deploy your site

### Environment Variables (Optional)

If needed, you can set environment variables in Railway dashboard:
- `PORT`: Railway automatically sets this
- Add any custom variables as needed

## File Structure

```
delight-tours/
├── index.html              # Home page
├── destinations.html       # Destinations page
├── why-uganda.html        # Why Uganda page
├── booking.html           # Booking page
├── contact.html           # Contact page
├── styles.css             # Main stylesheet
├── server.js              # Express server
├── package.json           # Dependencies
└── README.md             # This file
```

## Technologies Used

- **Frontend**: HTML5, CSS3, JavaScript
- **Backend**: Node.js, Express.js
- **Deployment**: Railway.app
- **Responsive Design**: CSS Grid, Flexbox
- **Form Handling**: JavaScript (client-side validation)

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)
- Mobile browsers

## Customization

### Updating Content
- Edit the HTML files to change text and content
- Modify `styles.css` to change colors, fonts, and styling
- Update images by replacing emoji placeholders with actual images

### Adding New Pages
1. Create a new HTML file
2. Add the page route in `server.js`
3. Update navigation links in all pages
4. Update footer links

### Changing Colors
The main colors are defined in `styles.css`:
- Primary Green: `#2c5f2d`
- Secondary Green: `#97bc62`
- Accent Orange: `#ff6b35`

## Contact Information

- **Email**: info@delighttours.ug
- **Phone**: +256 700 000 000
- **Location**: Kampala, Uganda

## License

MIT License - feel free to use this template for your own projects.

## Support

For support or questions about this website, please contact the development team.

---

Built with ❤️ for Delight Tours - Discover the Pearl of Africa!