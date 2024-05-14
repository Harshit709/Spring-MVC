<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Amazing Home Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<style>
  /* Customize styles here */
  body {
    font-family: Arial, sans-serif;
  }
  .hero-section {
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)), url('https://via.placeholder.com/1500x600') center/cover no-repeat;
    color: #fff;
    padding: 100px 0;
    text-align: center;
  }
  .hero-section h1 {
    font-size: 3.5rem;
    margin-bottom: 20px;
  }
  .features-section {
    padding: 100px 0;
    background-color: #f8f9fa;
  }
  .feature-item {
    text-align: center;
    margin-bottom: 40px;
    padding: 20px;
    border-radius: 10px;
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }
  .feature-icon {
    font-size: 3rem;
    color: #007bff;
    margin-bottom: 20px;
  }
  .testimonial-item {
    text-align: center;
    margin-bottom: 40px;
    padding: 20px;
    border-radius: 10px;
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }
  .testimonial-text {
    font-style: italic;
    margin-bottom: 20px;
  }
  .cta-section {
    background-color: #007bff;
    color: #fff;
    padding: 100px 0;
    text-align: center;
  }
  .cta-button {
    padding: 15px 40px;
    font-size: 1.5rem;
    border-radius: 5px;
    background-color: #fff;
    color: #007bff;
    text-decoration: none;
    transition: background-color 0.3s, color 0.3s;
  }
  .cta-button:hover {
    background-color: #0056b3;
    color: #fff;
  }
</style>
</head>
<body>

<!-- Hero Section -->
<section class="hero-section">
  <div class="container">
    <h1>Welcome to Our Amazing Website</h1>
    <p>We create beautiful and responsive websites for your needs</p>
  </div>
</section>

<!-- Features Section -->
<section class="features-section">
  <div class="container">
    <h2>Our Features</h2>
    <div class="row">
      <div class="col-md-4">
        <div class="feature-item">
          <i class="feature-icon fas fa-globe"></i>
          <h3>Global Reach</h3>
          <p>We reach clients all around the globe</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="feature-item">
          <i class="feature-icon fas fa-mobile-alt"></i>
          <h3>Mobile-Friendly</h3>
          <p>Our websites are fully responsive and mobile-friendly</p>
        </div>
      </div>
      <div class="col-md-4">
        <div class="feature-item">
          <i class="feature-icon fas fa-cogs"></i>
          <h3>Customizable</h3>
          <p>We tailor our services to fit your specific needs</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Testimonials Section -->
<section class="testimonials-section">
  <div class="container">
    <h2>What Our Clients Say</h2>
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <div class="testimonial-item">
          <p class="testimonial-text">"Amazing work! They delivered exactly what I needed."</p>
          <p>- John Doe</p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- Call-to-Action Section -->
<section class="cta-section">
  <div class="container">
    <h2>Go To Dashboard</h2>
    <a href="dashboard" class="cta-button">Dashboard</a>
  </div>
</section>

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
</body>
</html>
