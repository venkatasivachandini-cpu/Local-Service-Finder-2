<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Local Service Finder</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: #f5f7fb;
            color: #1e293b;
            line-height: 1.6;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        /* Navigation */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 18px 7%;
            background: white;
            box-shadow: 0 2px 10px #00000010;
        }

        .logo {
            font-size: 24px;
            font-weight: bold;
            color: #1e3a8a;
        }

        .logo span {
            color: #2563eb;
        }

        nav {
            display: flex;
            align-items: center;
            gap: 22px;
        }

        nav a {
            font-weight: 600;
        }

        nav a:hover {
            color: #2563eb;
        }

        .btn {
            display: inline-block;
            padding: 11px 20px;
            border: none;
            border-radius: 7px;
            background: #2563eb;
            color: white;
            font-weight: bold;
            cursor: pointer;
        }

        .btn:hover {
            background: #1d4ed8;
        }

        /* Hero section */
        .hero {
            min-height: 440px;
            padding: 75px 7%;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: linear-gradient(135deg, #dbeafe, #f8fafc);
        }

        .hero-content {
            max-width: 850px;
        }

        .tagline {
            color: #2563eb;
            font-size: 13px;
            font-weight: bold;
            letter-spacing: 2px;
        }

        .hero h1 {
            margin: 18px 0;
            font-size: clamp(34px, 5vw, 52px);
            line-height: 1.2;
            color: #0f172a;
        }

        .hero p {
            margin-bottom: 20px;
            color: #64748b;
            font-size: 17px;
        }

        /* Search bar */
        .search-box {
            display: flex;
            gap: 10px;
            margin-top: 28px;
            padding: 12px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 20px #00000010;
        }

        input, select {
            min-width: 0;
            flex: 1;
            padding: 13px;
            border: 1px solid #dbe2ea;
            border-radius: 7px;
            font-size: 15px;
        }

        input:focus, select:focus {
            outline: 2px solid #93c5fd;
        }

        /* Services */
        .section {
            padding: 60px 7%;
            text-align: center;
        }

        .section h2 {
            margin-bottom: 8px;
            font-size: 30px;
            color: #0f172a;
        }

        .subtitle {
            color: #64748b;
            margin-bottom: 30px;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(4, minmax(0, 1fr));
            gap: 20px;
        }

        .service-card {
            padding: 25px;
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            text-align: left;
            transition: transform 0.2s;
        }

        .service-card:hover {
            transform: translateY(-5px);
            border-color: #93c5fd;
        }

        .service-icon {
            font-size: 36px;
            margin-bottom: 10px;
        }

        .service-card h3 {
            margin-bottom: 8px;
        }

        .service-card p {
            font-size: 14px;
            color: #64748b;
        }

        /* Provider cards */
        .provider-grid {
            display: grid;
            grid-template-columns: repeat(3, minmax(0, 1fr));
            gap: 20px;
            text-align: left;
        }

        .provider-card {
            padding: 25px;
            background: white;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
        }

        .provider-card h3 {
            margin-bottom: 10px;
        }

        .provider-card p {
            margin-bottom: 8px;
            color: #64748b;
        }

        .provider-card .btn {
            margin-top: 12px;
        }

        /* Call to action */
        .cta {
            padding: 55px 7%;
            background: #dbeafe;
            text-align: center;
        }

        .cta h2 {
            margin-bottom: 10px;
        }

        .cta p {
            margin-bottom: 22px;
            color: #475569;
        }

        /* Footer */
        footer {
            padding: 25px;
            background: #0f172a;
            color: white;
            text-align: center;
        }

        /* Responsive layout */
        @media (max-width: 850px) {
            .navbar {
                flex-wrap: wrap;
                gap: 15px;
            }

            .service-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .provider-grid {
                grid-template-columns: repeat(2, minmax(0, 1fr));
            }

            .search-box {
                flex-direction: column;
            }
        }

        @media (max-width: 550px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
            }

            nav {
                flex-wrap: wrap;
                gap: 12px;
            }

            .service-grid,
            .provider-grid {
                grid-template-columns: 1fr;
            }

            .hero {
                padding: 50px 20px;
            }

            .section {
                padding: 40px 20px;
            }
        }
    </style>
</head>

<body>

    <!-- Navigation bar -->
    <header class="navbar">
        <a href="index.jsp" class="logo">
            LocalService<span>Finder</span>
        </a>

        <nav>
            <a href="index.jsp">Home</a>
            <a href="#services">Services</a>
            <a href="#providers">Providers</a>
            <a href="login.jsp">Login</a>
            <a href="customer-register.jsp" class="btn">Register</a>
        </nav>
    </header>

    <!-- Hero section -->
    <section class="hero">
        <div class="hero-content">
            <div class="tagline">YOUR NEIGHBORHOOD, YOUR SERVICES</div>

            <h1>Find Trusted Local Services Near You</h1>

            <p>
                Discover electricians, plumbers, cleaners and other
                professionals to help with your everyday needs.
            </p>

            <form action="search.jsp" method="get" class="search-box">
                <input type="text" name="location"
                       placeholder="Enter your location">

                <select name="category">
                    <option value="">All Services</option>
                    <option value="Electrician">Electrician</option>
                    <option value="Plumber">Plumber</option>
                    <option value="Cleaning">Cleaning</option>
                    <option value="Carpenter">Carpenter</option>
                    <option value="Appliance Repair">Appliance Repair</option>
                </select>

                <button class="btn" type="submit">Find Services</button>
            </form>
        </div>
    </section>

    <!-- Service categories -->
    <section class="section" id="services">
        <h2>Popular Services</h2>
        <p class="subtitle">
            Find the right professional for your needs.
        </p>

        <div class="service-grid">
            <a href="search.jsp?category=Electrician"
               class="service-card">
                <div class="service-icon">⚡</div>
                <h3>Electrician</h3>
                <p>Electrical repairs, wiring and installations.</p>
            </a>

            <a href="search.jsp?category=Plumber"
               class="service-card">
                <div class="service-icon">🔧</div>
                <h3>Plumber</h3>
                <p>Pipe repairs, taps and leak detection.</p>
            </a>

            <a href="search.jsp?category=Cleaning"
               class="service-card">
                <div class="service-icon">✨</div>
                <h3>Cleaning</h3>
                <p>Home and office cleaning services.</p>
            </a>

            <a href="search.jsp?category=Carpenter"
               class="service-card">
                <div class="service-icon">🪚</div>
                <h3>Carpenter</h3>
                <p>Furniture repairs and woodwork.</p>
            </a>
        </div>
    </section>

    <!-- Sample service providers -->
    <section class="section" id="providers">
        <h2>Featured Service Providers</h2>
        <p class="subtitle">
            Explore some example professionals.
        </p>

        <div class="provider-grid">
            <article class="provider-card">
                <h3>Ravi Electrical Services</h3>
                <p>Service: Electrician</p>
                <p>Location: Guntur</p>
                <p>Electrical repairs and installation.</p>
                <a class="btn" href="provider-profile.jsp">
                    View Profile
                </a>
            </article>

            <article class="provider-card">
                <h3>Sai Plumbing Services</h3>
                <p>Service: Plumber</p>
                <p>Location: Vijayawada</p>
                <p>Plumbing and pipe repair services.</p>
                <a class="btn" href="provider-profile.jsp">
                    View Profile
                </a>
            </article>

            <article class="provider-card">
                <h3>Clean Home Services</h3>
                <p>Service: Cleaning</p>
                <p>Location: Guntur</p>
                <p>Home and office cleaning.</p>
                <a class="btn" href="provider-profile.jsp">
                    View Profile
                </a>
            </article>
        </div>
    </section>

    <!-- Provider registration -->
    <section class="cta">
        <h2>Are You a Service Professional?</h2>
        <p>
            Register your services and connect with customers in your area.
        </p>
        <a href="provider-register.jsp" class="btn">
            Join as a Provider
        </a>
    </section>

    <!-- Footer -->
    <footer>
        <p>
            &copy; 2026 Local Service Finder.
            All rights reserved.
        </p>
    </footer>

</body>
</html>
