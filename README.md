# DASH - Disaster Assistance & Support Hub

A comprehensive emergency response and community support platform built with Python Flask and MySQL.

## 🌟 Features

### Core Features
- **Real-Time Location Tracking**: Detect and display user locations on interactive maps
- **Emergency SOS Button**: One-tap emergency alerts with GPS coordinates
- **Help Request System**: Request or donate food, shelter, water, medical help, or evacuation
- **Resource Sharing Portal**: Volunteers can offer shelter, food, transport, or supplies
- **Live Chat Support**: Direct messaging with AI assistant for emergency queries
- **Community Bulletin Board**: Public updates and announcements from authorities
- **Notification System**: Instant alerts about weather, roadblocks, medical camps, etc.
- **Rescue Team Dashboard**: Specialized interface for emergency responders
- **Analytics Dashboard**: Admin panel for monitoring system performance

### User Types
- **General Users**: Request help, access resources, use SOS features
- **Rescue Teams**: Respond to emergencies, manage missions, coordinate operations
- **Administrators**: Monitor system, manage users, create announcements

## 🚀 Quick Start

### Prerequisites
- Python 3.8+
- MySQL 5.7+
- pip (Python package installer)

### Installation

1. **Clone or download the project**
   ```bash
   cd "/Users/abrarjamangazi/Desktop/For DASH"
   ```

2. **Install Python dependencies**
   ```bash
   pip install -r requirements.txt
   ```

3. **Set up MySQL database**
   - Start MySQL service
   - Update database credentials in `app.py` if needed (default: root/password)
   - Run the database setup script:
   ```bash
   python setup_database.py
   ```

4. **Start the application**
   ```bash
   python app.py
   ```

5. **Access the application**
   - Open your browser and go to: `http://localhost:5001`

## 👥 Demo Accounts

The system comes with pre-configured demo accounts:

| Role | Username | Password | Description |
|------|----------|----------|-------------|
| **Admin** | `admin` | `admin123` | Full system access and analytics |
| **User** | `user1` | `user123` | Request help and access resources |
| **Rescue Team** | `rescue1` | `rescue123` | Respond to emergencies and manage missions |

## 🎨 Design Theme

The application uses a **light red color scheme** with:
- Primary Red: `#ff6b6b`
- Light Red: `#ffb3b3`
- Dark Red: `#d63031`
- Background: `#fff5f5`

## 📱 Key Features Walkthrough

### For General Users
1. **Login** with demo account `user1` / `user123`
2. **SOS Button**: Fixed red button in bottom-right corner for emergencies
3. **Request Help**: Click "Request Help" to create help requests
4. **Offer Resources**: Click "Offer Resources" to help others
5. **Live Chat**: Access AI assistant for emergency guidance
6. **Map View**: See real-time emergency locations and resources

### For Rescue Teams
1. **Login** with demo account `rescue1` / `rescue123`
2. **Monitor SOS Alerts**: View active emergency alerts with real-time notifications
3. **All Requests View**: Complete overview of all help requests with filtering and search
4. **Manage Requests**: Assign and track help requests
5. **Mission Map**: Interactive map showing all emergency locations
6. **Team Chat**: Communicate with other rescue team members

### For Administrators
1. **Login** with demo account `admin` / `admin123`
2. **Analytics Dashboard**: View system statistics and user activity
3. **Create Announcements**: Post updates to the bulletin board (updates in real-time to all users)
4. **Send Notifications**: Broadcast alerts to all users (real-time notifications)
5. **Export Data**: Download comprehensive PDF reports of all system data
6. **Monitor System**: Track SOS alerts and help requests

## 🗄️ Database Schema

The application uses the following main tables:
- `user`: User accounts and profiles
- `help_request`: Help requests from users
- `resource_offer`: Resources offered by volunteers
- `sos_alert`: Emergency SOS alerts
- `chat_message`: Chat messages and communications
- `bulletin_post`: Community announcements
- `notification`: System notifications

## 🔧 Configuration

### Environment Variables
Create a `.env` file in the project root:
```env
OPENAI_API_KEY=your-openai-api-key-here
MYSQL_PASSWORD=your-mysql-password
```

### Database Configuration
Update the database connection in `app.py`:
```python
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://username:password@localhost/dash_db'
```

## 🌐 API Endpoints

### User Management
- `POST /api/update_location` - Update user location
- `POST /api/send_sos` - Send emergency SOS alert
- `POST /api/create_help_request` - Create help request
- `POST /api/offer_resource` - Offer resources

### Data Retrieval
- `GET /api/get_map_data` - Get map data (SOS alerts, requests, resources)
- `POST /api/ai_chat` - AI chat assistant

## 🛠️ Development

### Project Structure
```
/Users/abrarjamangazi/Desktop/For DASH/
├── app.py                 # Main Flask application
├── setup_database.py      # Database setup script
├── requirements.txt       # Python dependencies
├── templates/            # HTML templates
│   ├── base.html
│   ├── index.html
│   ├── login.html
│   ├── register.html
│   ├── user_dashboard.html
│   ├── rescue_dashboard.html
│   └── admin_dashboard.html
└── static/               # Static assets
    ├── css/
    │   └── style.css
    └── js/
```

### Adding New Features
1. Update the database models in `app.py`
2. Add new routes and API endpoints
3. Create corresponding HTML templates
4. Update the CSS for styling
5. Test with demo accounts

## 🔒 Security Features

- Password hashing with Werkzeug
- User session management with Flask-Login
- Input validation and sanitization
- Role-based access control
- Secure API endpoints

## 📞 Emergency Features

### SOS System
- One-tap emergency button
- Automatic GPS location sharing
- Real-time alert to rescue teams
- Priority handling for critical situations

### Help Request System
- Multiple request types (food, shelter, water, medical, evacuation)
- Urgency levels (low, medium, high, critical)
- Auto-matching with available resources
- Real-time status updates

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is created for educational and emergency response purposes.

## 🆘 Support

For technical support or emergency assistance:
- Use the in-app chat system
- Contact system administrators
- Check the bulletin board for updates

---

**DASH - Disaster Assistance & Support Hub**  
Built with ❤️ for emergency response and community support
