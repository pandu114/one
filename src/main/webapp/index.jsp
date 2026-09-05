<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>NexusShop — Simple E-Commerce</title>

  <!-- Fonts & Icons -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" crossorigin="anonymous" />

  <style>
    /* Base styles */
    body {
      font-family: 'Inter', sans-serif;
      background: #f7f7f7;
      color: #333;
      margin: 0;
      padding: 0;
      line-height: 1.5;
    }
    a {
      color: #e07a5f;
      text-decoration: none;
    }
    a:hover {
      text-decoration: underline;
    }
    header, footer {
      background: #fff;
      box-shadow: 0 1px 4px rgba(0,0,0,0.1);
      padding: 15px 20px;
      position: sticky;
      top: 0;
      z-index: 100;
    }
    .container {
      max-width: 1100px;
      margin: auto;
      padding: 0 15px;
    }

    /* Header */
    header .brand {
      font-weight: 700;
      font-size: 24px;
      display: flex;
      align-items: center;
      gap: 10px;
      color: #e07a5f;
    }
    nav ul {
      list-style: none;
      display: flex;
      gap: 15px;
      padding-left: 0;
      margin: 0;
    }
    nav ul li a {
      font-weight: 600;
      font-size: 14px;
      color: #555;
      display: flex;
      align-items: center;
      gap: 6px;
      padding: 6px 10px;
      border-radius: 6px;
      transition: background 0.3s;
    }
    nav ul li a:hover, nav ul li a.active {
      background: #e07a5f;
      color: white;
    }

    /* Search bar */
    .search-bar {
      margin-left: auto;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .search-bar input {
      padding: 6px 10px;
      border: 1px solid #ccc;
      border-radius: 20px;
      font-size: 14px;
      min-width: 180px;
    }
    .search-bar button {
      background: #e07a5f;
      border: none;
      color: white;
      padding: 7px 12px;
      border-radius: 20px;
      cursor: pointer;
      font-size: 14px;
    }
    .search-bar button:hover {
      background: #cf6c50;
    }

    /* Main sections */
    section {
      background: #fff;
      margin: 20px 0;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 2px 6px rgba(0,0,0,0.08);
    }
    h2 {
      font-size: 22px;
      margin-bottom: 8px;
      color: #e07a5f;
    }
    p.subtitle {
      color: #666;
      margin-bottom: 15px;
    }

    /* Categories grid */
    .categories-grid {
      display: flex;
      gap: 15px;
      flex-wrap: wrap;
      justify-content: center;
    }
    .category-card {
      background: #fafafa;
      border: 1px solid #ddd;
      border-radius: 8px;
      width: 140px;
      text-align: center;
      padding: 15px 10px;
      cursor: pointer;
      transition: background 0.3s, border-color 0.3s;
    }
    .category-card:hover {
      background: #e07a5f;
      color: white;
      border-color: #cf6c50;
    }
    .category-card i {
      font-size: 28px;
      margin-bottom: 10px;
    }
    .category-card .count {
      font-size: 12px;
      color: #666;
      margin-top: 4px;
    }

    /* Products grid */
    .products-grid {
      display: flex;
      gap: 20px;
      flex-wrap: wrap;
      justify-content: center;
    }
    .product-card {
      background: #fafafa;
      border: 1px solid #ddd;
      border-radius: 8px;
      width: 230px;
      display: flex;
      flex-direction: column;
      overflow: hidden;
      transition: box-shadow 0.3s ease;
    }
    .product-card:hover {
      box-shadow: 0 4px 12px rgba(0,0,0,0.15);
    }
    .product-card img {
      width: 100%;
      height: 160px;
      object-fit: cover;
    }
    .product-info {
      padding: 12px;
      flex-grow: 1;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .product-info h3 {
      font-size: 16px;
      margin: 6px 0;
      color: #333;
    }
    .product-info .category {
      font-size: 12px;
      color: #888;
      text-transform: uppercase;
    }
    .price-row {
      margin-top: 8px;
    }
    .price {
      font-weight: 700;
      font-size: 18px;
      color: #e07a5f;
    }
    .old-price {
      text-decoration: line-through;
      color: #999;
      font-size: 13px;
      margin-left: 8px;
    }
    .rating {
      margin-top: 6px;
      color: #f5a623;
      font-size: 14px;
    }
    .add-cart-btn {
      background: #e07a5f;
      border: none;
      color: white;
      padding: 10px 0;
      font-weight: 600;
      cursor: pointer;
      border-radius: 0 0 8px 8px;
      transition: background 0.3s;
    }
    .add-cart-btn:hover {
      background: #cf6c50;
    }

    /* Footer */
    footer {
      text-align: center;
      font-size: 14px;
      color: #888;
      padding: 15px 0;
    }

    /* Responsive */
    @media (max-width: 600px) {
      nav ul {
        flex-direction: column;
        gap: 8px;
      }
      .categories-grid, .products-grid {
        flex-direction: column;
        align-items: center;
      }
      .product-card, .category-card {
        width: 90%;
      }
      .search-bar {
        margin-top: 10px;
        width: 100%;
        justify-content: center;
      }
    }
  </style>
</head>

<body>
  <header>
    <div class="container" style="display:flex; align-items:center;">
      <a class="brand" href="#">
        <i class="fas fa-store-alt"></i> NexusShop
      </a>
      <nav aria-label="Main navigation" style="margin-left: 30px;">
        <ul>
          <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
          <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
          <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
          <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
          <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        </ul>
      </nav>
      <div class="search-bar" role="search" style="margin-left:auto;">
        <input type="search" id="searchInput" aria-label="Search products" placeholder="Search products..." />
        <button id="searchBtn" aria-label="Search"><i class="fas fa-search"></i></button>
      </div>
    </div>
  </header>

  <main class="container">

    <!-- Hero -->
    <section aria-label="Hero banner" style="text-align: center; padding: 50px 15px; background: #e07a5f; border-radius: 10px; color: white;">
      <h1>Discover Premium Essentials</h1>
      <p>Fashion, tech & accessories with free shipping on your first order.</p>
      <div style="margin-top: 15px;">
        <a href="#products" class="add-cart-btn" style="background: white; color: #e07a5f; padding: 12px 24px; border-radius: 30px; text-decoration: none; font-weight: 700; display: inline-block; margin-right: 12px;">Shop Now <i class="fas fa-arrow-right"></i></a>
        <a href="#deals" class="add-cart-btn" style="background: #cf6c50;">Explore Deals <i class="fas fa-clock"></i></a>
      </div>
    </section>

    <!-- Categories -->
    <section id="categories" aria-labelledby="categoriesTitle">
      <h2 id="categoriesTitle">Browse Categories</h2>
      <p class="subtitle">Find exactly what you're looking for</p>
      <div class="categories-grid" id="categoriesGrid"></div>
    </section>

    <!-- Products -->
    <section id="products" aria-labelledby="productsTitle">
      <h2 id="productsTitle">Trending Now</h2>
      <p class="subtitle">Popular picks from our community</p>
      <div class="products-grid" id="productsGrid"></div>
    </section>

    <!-- Deals -->
    <section id="deals" aria-labelledby="dealsTitle">
      <h2 id="dealsTitle">⚡ Flash Deal</h2>
      <p class="subtitle">Grab it before it's gone — limited stock</p>
      <div style="display:flex; flex-wrap: wrap; gap: 20px; background:#fafafa; border-radius: 10px; padding:15px; align-items:center;">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2" style="max-width: 320px; width: 100%; border-radius: 10px;" loading="lazy" />
        <div style="flex: 1; min-width: 280px;">
          <h3>MacBook Air M2</h3>
          <p>Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <p style="font-weight: 700; font-size: 26px; color:#e07a5f;">$999 <span style="text-decoration: line-through; color: #999; font-weight: 400; font-size: 18px;">$1,199</span></p>
          <p>Only <strong>12</strong> items left — hurry!</p>
          <button id="buyDealBtn" class="add-cart-btn" style="width: 100%; max-width: 220px;">Add to Cart</button>
        </div>
      </div>
    </section>

    <!-- Testimonials -->
    <section id="testimonials" aria-labelledby="testimonialsTitle">
      <h2 id="testimonialsTitle">What Our Customers Say</h2>
      <p class="subtitle">Real reviews from real people</p>
      <div id="testimonialsList" style="display: flex; gap: 15px; overflow-x: auto; padding-bottom: 10px;"></div>
    </section>

  </main>

  <footer>
    &copy; <span id="year"></span> NexusShop. All rights reserved.
  </footer>

  <script>
    // Data
    const categories = [
      { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
      { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
      { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
      { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
      { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
      { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 },
    ];
    const products = [
      { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New',
        img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80',
        category: 'Smartphones' },
      { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '',
        img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80',
        category: 'Laptops' },
      { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '',
        img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80',
        category: 'Footwear' },
      { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New',
        img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' },
      { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '',
        img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale',
        img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80',
        category: 'Accessories' },
      { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '',
        img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80',
        category: 'Gadgets' },
    ];
    const testimonials = [
      {
        name: 'Ava Martin', role: 'Verified Buyer',
        avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80',
        text: 'Fast shipping and excellent support. The product exceeded my expectations!',
        stars: 5
      },
      {
        name: 'Michael Lee', role: 'Frequent Shopper',
        avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80',
        text: 'Great selection and smooth checkout. Will definitely shop again.',
        stars: 4
      },
      {
        name: 'Sophia Chen', role: 'Designer',
        avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80',
        text: 'Love the quality and the packaging. Everything arrived in perfect condition.',
        stars: 5
      },
      {
        name: 'James Wilson', role: 'Tech Enthusiast',
        avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80',
        text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.',
        stars: 5
      }
    ];

    // DOM references
    const categoriesGrid = document.getElementById('categoriesGrid');
    const productsGrid = document.getElementById('productsGrid');
    const testimonialsList = document.getElementById('testimonialsList');
    const searchInput = document.getElementById('searchInput');
    const searchBtn = document.getElementById('searchBtn');
    const buyDealBtn = document.getElementById('buyDealBtn');

    let cartCount = 0;

    // Render categories
    function renderCategories() {
      categoriesGrid.innerHTML = '';
      categories.forEach(cat => {
        const card = document.createElement('div');
        card.className = 'category-card';
        card.innerHTML = `
          <i class="fas ${cat.icon}"></i>
          <div>${cat.name}</div>
          <div class="count">${cat.count} items</div>
        `;
        card.onclick = () => {
          searchInput.value = cat.name;
          filterProducts(cat.name);
          document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
        };
        categoriesGrid.appendChild(card);
      });
    }

    // Render products
    function renderProducts(list) {
      productsGrid.innerHTML = '';
      if (!list.length) {
        productsGrid.innerHTML = `<p style="text-align:center; color:#888;">No products found.</p>`;
        return;
      }
      list.forEach(p => {
        const card = document.createElement('div');
        card.className = 'product-card';
        card.innerHTML = `
          <img src="${p.img}" alt="${p.title}" loading="lazy" />
          <div class="product-info">
            <div class="category">${p.category}</div>
            <h3>${p.title}</h3>
            <div class="price-row">
              <span class="price">$${p.price.toLocaleString()}</span>
              ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
            </div>
            <div class="rating">${'★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating))} (${p.reviews})</div>
          </div>
          <button class="add-cart-btn">Add to Cart</button>
        `;
        card.querySelector('.add-cart-btn').onclick = () => addToCart(p.id, card.querySelector('.add-cart-btn'));
        productsGrid.appendChild(card);
      });
    }

    // Render testimonials
    function renderTestimonials() {
      testimonialsList.innerHTML = '';
      testimonials.forEach(t => {
        const card = document.createElement('div');
        card.style.minWidth = '280px';
        card.style.background = '#fff';
        card.style.borderRadius = '8px';
        card.style.padding = '15px';
        card.style.boxShadow = '0 2px 8px rgba(0,0,0,0.1)';
        card.innerHTML = `
          <div style="color:#f5a623; font-size: 18px;">${'★'.repeat(t.stars) + '☆'.repeat(5 - t.stars)}</div>
          <p style="font-style: italic; color:#555;">"${t.text}"</p>
          <div style="display:flex; align-items:center; gap:10px; margin-top:10px;">
            <img src="${t.avatar}" alt="${t.name}" loading="lazy" style="border-radius: 50%; width:44px; height:44px; object-fit: cover;" />
            <div>
              <div style="font-weight: 600;">${t.name}</div>
              <div style="font-size: 13px; color:#888;">${t.role}</div>
            </div>
          </div>
        `;
        testimonialsList.appendChild(card);
      });
    }

    // Filter products based on search or category
    function filterProducts(query) {
      const q = query.trim().toLowerCase();
      if (!q) {
        renderProducts(products);
        return;
      }
      const filtered = products.filter(p =>
        p.title.toLowerCase().includes(q) ||
        p.category.toLowerCase().includes(q)
      );
      renderProducts(filtered);
    }

    // Add product to cart
    function addToCart(productId, button) {
      cartCount++;
      button.textContent = 'Added ✓';
      button.disabled = true;
      setTimeout(() => {
        button.textContent = 'Add to Cart';
        button.disabled = false;
      }, 1500);
      alert(`🛒 Added to cart. You have ${cartCount} item(s) in your cart.`);
    }

    // Deal buy button
    if (buyDealBtn) {
      buyDealBtn.onclick = () => {
        cartCount++;
        buyDealBtn.textContent = 'Added ✓';
        buyDealBtn.disabled = true;
        setTimeout(() => {
          buyDealBtn.textContent = 'Add to Cart';
          buyDealBtn.disabled = false;
        }, 1500);
        alert(`🛒 Added deal item to cart. You have ${cartCount} item(s) in your cart.`);
      };
    }

    // Search action
    if (searchBtn) {
      searchBtn.onclick = () => filterProducts(searchInput.value);
      searchInput.onkeydown = e => {
        if (e.key === 'Enter') filterProducts(searchInput.value);
      };
    }

    // Show current year in footer
    document.getElementById('year').textContent = new Date().getFullYear();

    // Initialize
    renderCategories();
    renderProducts(products);
    renderTestimonials();
  </script>
</body>
</html>
