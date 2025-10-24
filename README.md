# Ruby on Rails Chat Application with Pusher Channels

A real-time chat application built with Ruby on Rails and Pusher Channels, featuring multiple chat rooms and real-time messaging.

## Features

- 🚀 **Multiple Chat Rooms** - Create and join different chat rooms
- 💬 **Real-time Messaging** - Instant message delivery using Pusher Channels
- 👥 **User Identification** - Username-based messaging system
- 🕐 **Message Timestamps** - Display message date and time
- 🗑️ **Room Management** - Create and delete chat rooms
- 📱 **Responsive Design** - Works on desktop and mobile devices

## Tech Stack

- **Backend**: Ruby on Rails 7.2+
- **Database**: PostgreSQL
- **Real-time**: Pusher Channels
- **Frontend**: Bootstrap 5, jQuery, CoffeeScript
- **Styling**: SCSS

## Prerequisites

Before you begin, ensure you have the following installed:
- Ruby 3.4+ ([Download](https://www.ruby-lang.org/en/downloads/))
- PostgreSQL ([Download](https://www.postgresql.org/download/))
- Bundler (`gem install bundler`)
- A Pusher account ([Sign up](https://pusher.com/))

## Getting Started

### 1. Clone The Repository
```bash
git clone https://github.com/yourusername/rubychatapp.git
cd rubychatapp
```

### 2. Install Dependencies
```bash
bundle install
```

### 3. Setup Database Configuration

Update `config/database.yml` with your PostgreSQL credentials or set the `DATABASE_URL` environment variable:

```bash
# Example for local PostgreSQL
export DATABASE_URL="postgresql://username:password@localhost:5432/chatapp_development"
```

### 4. Setup Pusher Configuration

#### Option A: Using Figaro (Recommended)

1. Run Figaro installer:
```bash
bundle exec figaro install
```

2. Open `config/application.yml` and add your Pusher credentials:
```yaml
DATABASE_URL: "your_database_url_here"

pusher_app_id: 'your_pusher_app_id'
pusher_key: 'your_pusher_key'
pusher_secret: 'your_pusher_secret'
pusher_cluster: 'your_pusher_cluster'  # e.g., 'ap1' for Asia Pacific
```

#### Option B: Using Environment Variables

Set the following environment variables:
```bash
export PUSHER_APP_ID='your_pusher_app_id'
export PUSHER_KEY='your_pusher_key'
export PUSHER_SECRET='your_pusher_secret'
export PUSHER_CLUSTER='your_pusher_cluster'
```

Then update `config/initializers/pusher.rb` to use ENV variables:
```ruby
PUSHER_CLIENT = Pusher::Client.new(
  app_id: ENV['PUSHER_APP_ID'],
  key:    ENV['PUSHER_KEY'],
  secret: ENV['PUSHER_SECRET'],
  cluster: ENV['PUSHER_CLUSTER'],
  use_tls: true
)
```

### 5. Setup Database
```bash
rails db:create
rails db:migrate
```

### 6. Start The Server
```bash
rails server
```

The application will be available at `http://localhost:3000`

## Usage

### Creating a Chat Room
1. Navigate to the home page
2. Enter a room name in the "Create New Room" form
3. Click "Create Room"

### Joining a Chat Room
1. Click on any room from the "Available Rooms" list
2. Enter your username when prompted
3. Press Enter to start chatting

### Sending Messages
1. Type your message in the input field at the bottom
2. Press Enter to send
3. Your message will appear in real-time for all users in the room

### Deleting a Room
1. On the home page, click the "Delete" button next to any room
2. Confirm the deletion (this will also delete all messages in that room)

## Project Structure

```
rubychatapp/
├── app/
│   ├── controllers/
│   │   ├── chats_controller.rb      # Handles message creation
│   │   └── rooms_controller.rb      # Handles room CRUD operations
│   ├── models/
│   │   ├── chat.rb                  # Message model with Pusher integration
│   │   └── room.rb                  # Chat room model
│   ├── views/
│   │   └── rooms/
│   │       ├── index.html.erb       # Room list page
│   │       └── show.html.erb        # Chat interface
│   └── assets/
│       ├── javascripts/
│       │   └── chats.coffee.erb     # Real-time chat logic
│       └── stylesheets/
│           └── application.scss     # Custom styles
├── config/
│   ├── routes.rb                    # Application routes
│   ├── database.yml                 # Database configuration
│   └── initializers/
│       └── pusher.rb                # Pusher configuration
└── db/
    └── migrate/                     # Database migrations
```

## Database Schema

### Rooms Table
- `id` (bigint, primary key)
- `name` (string, unique)
- `created_at` (datetime)
- `updated_at` (datetime)

### Chats Table
- `id` (bigint, primary key)
- `message` (text)
- `username` (string)
- `room_id` (bigint, foreign key)
- `created_at` (datetime)
- `updated_at` (datetime)

## Configuration Files

### Important Files to Configure

1. **`config/application.yml`** - Contains Pusher credentials (gitignored)
2. **`config/database.yml`** - Database connection settings
3. **`config/initializers/pusher.rb`** - Pusher client initialization

## License

This project is open source and available under the [MIT License](LICENSE).

## Acknowledgments

- [Pusher Channels](https://pusher.com/channels) - Real-time messaging
- [Ruby on Rails](https://rubyonrails.org/) - Web framework
- [Bootstrap](https://getbootstrap.com/) - UI framework

## Support

For issues and questions:
- Open an issue on GitHub
- Check [Pusher documentation](https://pusher.com/docs)
- Review [Rails guides](https://guides.rubyonrails.org/)

---

Built with ❤️ using Ruby on Rails and Pusher Channels
