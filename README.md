# E-commerce-React-Application



---

# E-commerce React Application

This project is a full-stack e-commerce web application developed using **React** for the front-end and **PostgreSQL** for the back-end. It supports features such as product browsing, filtering by categories, user authentication, shopping cart management, and more. 

## Table of Contents

- [Demo](#demo)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Project Structure](#project-structure)
- [Setup Instructions](#setup-instructions)
  - [Backend Setup](#backend-setup)
  - [Frontend Setup](#frontend-setup)
- [Database Schema](#database-schema)
- [API Documentation](#api-documentation)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)

## Demo

Check out the live demo here: [Live Demo](#) .

## Features

- **Product Listings:** Display all products with the ability to filter by category and price.
- **Category Filtering:** Allows users to filter products by categories.
- **User Authentication:** Signup, login, and password recovery functionalities.
- **Shopping Cart:** Add and remove products from the cart, update quantities, and checkout.
- **Featured Products & Promotions:** Highlights selected products with a special promotions section.
- **Responsive Design:** Fully optimized for desktop, tablet, and mobile views.
- **Footer Quick Links:** Links to terms, privacy policy, contact, and about us pages.

## Technologies Used

### Frontend:
- **React**: For building the user interface.
- **React Router**: For handling navigation between pages.
- **CSS/SCSS**: For custom styling of components and layouts.
- **Axios**: For making HTTP requests to the backend API.
- **HTML5/CSS3**: To structure and style the content.

### Backend:
- **Node.js**: As the server environment.
- **Express.js**: For building the REST API.
- **PostgreSQL**: As the relational database for storing product, user, and order data.
- **Sequelize ORM**: To simplify interactions with the PostgreSQL database.
- **JWT Authentication**: For secure user authentication and authorization.

### Database:
- **PostgreSQL**: A powerful, open-source relational database system used to manage users, products, categories, and orders.

## Project Structure

```
e-commerce-project/
├── backend/
│   ├── controllers/
│   │   ├── authController.js
│   │   ├── productController.js
│   │   ├── categoryController.js
│   ├── models/
│   │   ├── user.js
│   │   ├── product.js
│   │   ├── category.js
│   ├── routes/
│   │   ├── authRoutes.js
│   │   ├── productRoutes.js
│   │   └── categoryRoutes.js
│   ├── config/
│   │   └── db.js (Sequelize config)
│   ├── app.js (Express setup)
│   ├── server.js (Server initialization)
├── frontend/
│   ├── public/
│   │   ├── images/
│   ├── src/
│   │   ├── components/
│   │   │   ├── Product.js
│   │   │   ├── Footer.js
│   │   └── pages/
│   │       ├── Home.js
│   │       ├── Products.js
│   │       ├── Login.js
│   │   ├── services/
│   │       └── api.js (Axios service for API requests)
│   ├── App.js
│   ├── index.js
│   ├── styles/
│       └── App.css
├── README.md
└── package.json
```

## Setup Instructions

To set up the project locally, follow these steps:

### Backend Setup

1. **Clone the repository:**

   ```
   git clone https://github.com/your-username/e-commerce-project.git
   cd e-commerce-project/backend
   ```

2. **Install backend dependencies:**

   Make sure you have Node.js and PostgreSQL installed, then run:

   ```
   npm install
   ```

3. **Create a `.env` file in the `backend/` directory with the following configuration:**

   ```env
   DB_HOST=localhost
   DB_USER=your_db_user
   DB_PASSWORD=your_db_password
   DB_NAME=your_db_name
   JWT_SECRET=your_jwt_secret
   ```

4. **Create and migrate your PostgreSQL database:**

   Open your PostgreSQL client, create a new database, and then run Sequelize migrations:

   ```sql
   CREATE DATABASE e_commerce_db;
   ```

   To run migrations, execute:

   ```
   npx sequelize-cli db:migrate
   ```

5. **Start the backend server:**

   ```
   npm start
   ```

   The server will run on `http://localhost:5000`.

### Frontend Setup

1. **Go to the frontend directory:**

   ```
   cd ../frontend
   ```

2. **Install frontend dependencies:**

   ```
   npm install
   ```

3. **Start the frontend development server:**

   ```
   npm start
   ```

   The frontend will be available at `http://localhost:3000`.

### Backend API Endpoints

| HTTP Method | Endpoint               | Description                       |
|-------------|------------------------|-----------------------------------|
| `POST`      | `/api/auth/signup`      | Register a new user               |
| `POST`      | `/api/auth/login`       | Authenticate and log in a user    |
| `GET`       | `/api/products`         | Retrieve all products             |
| `GET`       | `/api/products/:id`     | Retrieve a specific product       |
| `GET`       | `/api/categories`       | Retrieve all categories           |

## Database Schema

The database schema includes the following tables:

- **Users**: For storing user credentials and profile information.
- **Products**: For storing product information including names, prices, images, and descriptions.
- **Categories**: For organizing products into different categories.
- **Orders**: For managing customer orders and their corresponding details.

```sql
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL,
    image TEXT,
    description TEXT,
    category_id INT REFERENCES categories(id)
);
```

## API Documentation

For interacting with the backend API, you will need to authenticate your requests for certain endpoints. You can use tools like **Postman** or **cURL** for testing the endpoints.

### Authentication
- **Login**: Send a `POST` request to `/api/auth/login` with an email and password. It will return a JWT token, which you need to authenticate further requests.

### Products and Categories
- **Fetching Products**: Send a `GET` request to `/api/products` to fetch all products or filter by category.
- **Fetching Categories**: Send a `GET` request to `/api/categories` to fetch all product categories.

## Screenshots

### Home Page
![Home Page](public/images/homepage_screenshot.jpg)

### Product Listing Page
![Products Page](public/images/productpage_screenshot.jpg)

### Cart Page
![Cart Page](public/images/cart_screenshot.jpg)

## Contributing

Contributions are welcome! If you'd like to contribute:

1. Fork the repository.
2. Create a new branch with a descriptive name for your feature (`git checkout -b feature/new-feature`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature/new-feature`).
5. Create a pull request.

## License



---
