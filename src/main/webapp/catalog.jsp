<%@ page import="java.util.List" %>
<%@ page import="com.pixelhaven.model.PixelPhone" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Pixel Haven | Offers</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">


    <style>
        /* BASE STYLES */
        * { box-sizing: border-box; margin: 0; padding: 0; }
        body { font-family: 'Roboto', sans-serif; background-color: #f9f9f9; color: #111; }

        /* Add this to your existing styles */
        .btn-specs {
            background-color: transparent;
            color: #000;
            border: 2px solid #000; /* Black outline */
            padding: 15px 0;
            width: 100%;
            border-radius: 30px;
            font-size: 16px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.2s;
            margin-bottom: 12px; /* Adds space between this and Add To Cart */
            display: block; /* Ensures it sits on its own line */
        }

        .btn-specs:hover {
            background-color: #f0f0f0; /* Light grey on hover */
            color: black;
        }

        /* NAVBAR - More compact */
        .navbar {
            background: white;
            padding: 15px 40px; /* Reduced padding */
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: sticky;
            top: 0;
            z-index: 1000;
            border-bottom: 1px solid #eee;
        }
        .logo { font-size: 20px; font-weight: 700; letter-spacing: -0.5px; }
        .search-bar input { padding: 8px 15px; border-radius: 30px; border: 1px solid #ddd; width: 250px; outline: none; background: #f1f3f4; font-size: 14px; }
        .search-btn { background: black; color: white; border: none; padding: 8px 20px; border-radius: 30px; cursor: pointer; font-weight: 500; margin-left: 10px; font-size: 13px; }


        /* MAIN CONTAINER - Reduced max-width for "zoomed out" feel */
        .container {
            max-width: 1200px; /* Reduced from 1400px */
            margin: 0 auto;
            padding: 20px;
        }


        /* SECTION HEADERS */
        .series-header {
            width: 100%;
            font-size: 24px; /* Reduced from 32px */
            font-weight: 700;
            margin-top: 40px;
            margin-bottom: 20px;
            padding-bottom: 10px;
            border-bottom: 2px solid #eee;
            text-align: left;
        }


        /* PRODUCT GRID - Tighter gaps */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr)); /* Smaller min-width */
            gap: 25px; /* Reduced gap */
            margin-bottom: 40px;
        }


        /* CARD DESIGN - Significantly smaller & compact */
        .card {
            background: white;
            border-radius: 20px;
            padding: 25px 20px; /* Much less padding */
            text-align: center;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: 1px solid #f0f0f0;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            min-height: 500px; /* Reduced height from 600px */
        }
        .card:hover { transform: translateY(-5px); box-shadow: 0 15px 30px rgba(0,0,0,0.08); }


        /* IMAGE SIZE - The biggest change */
        .card img {
            width: 100%;
            height: 220px; /* Reduced from 320px */
            object-fit: contain;
            margin-bottom: 15px;
            transition: opacity 0.2s;
        }


        /* TYPOGRAPHY SCALING */
        .product-name { font-size: 18px; font-weight: 700; margin-bottom: 5px; } /* Smaller text */
        .description { color: #666; font-size: 13px; margin-bottom: 15px; height: 35px; overflow: hidden;}


        /* SELECTION STYLES */
        .options-container { margin-bottom: 10px; }
        .options-label { font-size: 10px; text-transform: uppercase; letter-spacing: 1px; color: #888; margin-bottom: 6px; font-weight: 700; }


        .color-group { display: flex; gap: 8px; justify-content: center; margin-bottom: 15px; }
        .color-dot { width: 24px; height: 24px; border-radius: 50%; cursor: pointer; border: 1px solid #ddd; position: relative; } /* Smaller dots */
        .color-dot.active::after { content: ''; position: absolute; top: -3px; left: -3px; right: -3px; bottom: -3px; border: 2px solid #000; border-radius: 50%; }


        .storage-group { display: flex; gap: 6px; justify-content: center; flex-wrap: wrap; }
        .storage-btn { padding: 6px 12px; border: 1px solid #ddd; border-radius: 8px; background: white; cursor: pointer; font-size: 11px; color: #444; }
        .storage-btn.active { border-color: #000; background-color: #000; color: white; }


        .price { font-size: 18px; font-weight: 700; margin: 15px 0; } /* Smaller price */


        .btn-buy {
            background-color: #000;
            color: #fff;
            padding: 10px 0; /* Smaller button padding */
            width: 100%;
            border-radius: 30px;
            font-size: 14px;
            font-weight: 700;
            border: none;
            cursor: pointer;
            transition: background 0.2s;
        }
        .btn-buy:hover { background-color: #333; }
    </style>


    <script>
        function updateProduct(element, type, phoneId, value) {
            let siblings = element.parentNode.children;
            for (let i = 0; i < siblings.length; i++) { siblings[i].classList.remove('active'); }
            element.classList.add('active');


            if (type === 'color') {
                let img = document.getElementById('img-' + phoneId);
                img.style.opacity = 0;
                setTimeout(() => { img.src = 'images/' + value; img.style.opacity = 1; }, 200);
            } else if (type === 'storage') {
                document.getElementById('price-' + phoneId).innerText = 'RM ' + parseFloat(value).toFixed(2);
            }
        }
    </script>
</head>
<body>


<div class="navbar">
    <div class="logo">Pixel Haven</div>
    <div class="search-bar">
        <form action="search" method="get">
            <input type="text" name="query" placeholder="Search Pixel..." required>
            <button type="submit" class="search-btn">Search</button>
        </form>
    </div>
</div>


<div class="container">
        <%
           List<PixelPhone> phones = (List<PixelPhone>) request.getAttribute("phones");
           String currentSeries = "";
           boolean firstGroup = true;


           if (phones != null) {
               // We assume the list is sorted or we handle grouping by checking the previous item
               for (int i = 0; i < phones.size(); i++) {
                   PixelPhone p = phones.get(i);


                   // HEADER LOGIC: If this phone's series is different from the last one, start a new section
                   if (!p.getSeries().equals(currentSeries)) {
                       if (!firstGroup) {
                           // Close the previous grid div if it's not the first loop
                           out.println("</div>");
                       }
                       currentSeries = p.getSeries();
       %>
    <div class="series-header"><%= currentSeries %></div>
    <div class="product-grid">
        <%
                firstGroup = false;
            }
        %>
        <div class="card">
            <div>
                <img id="img-<%= p.getId() %>" src="images/<%= p.getDefaultImageUrl() %>" alt="<%= p.getName() %>">
                <div class="product-name"><%= p.getName() %></div>
                <div class="description"><%= p.getDescription() %></div>
            </div>


            <div class="options-container">
                <div class="options-label">Color</div>
                <div class="color-group">
                    <% for (int j = 0; j < p.getColors().size(); j++) {
                        String active = (j==0) ? "active" : "";
                    %>
                    <div class="color-dot <%= active %>" style="background-color: <%= p.getColors().get(j) %>;"
                         onclick="updateProduct(this, 'color', '<%= p.getId() %>', '<%= p.getColorImages().get(j) %>')"></div>
                    <% } %>
                </div>


                <div class="options-label">Storage</div>
                <div class="storage-group">
                    <% for (int k = 0; k < p.getStorage().size(); k++) {
                        String active = (k==0) ? "active" : "";
                    %>
                    <div class="storage-btn <%= active %>"
                         onclick="updateProduct(this, 'storage', '<%= p.getId() %>', '<%= p.getStoragePrices().get(k) %>')">
                        <%= p.getStorage().get(k) %>
                    </div>
                    <% } %>
                </div>


                <div class="price" id="price-<%= p.getId() %>">RM <%= String.format("%.2f", p.getDefaultPrice()) %></div>

                <a href="productSpecs?id=<%= p.getId() %>" class="btn-specs" style="text-decoration:none; display:block; line-height:20px;">View Specs</a>

                <form action="addToCart" method="post">
                    <input type="hidden" name="productId" value="<%= p.getId() %>">
                    <button type="submit" class="btn-buy" onclick="alert('Added to Cart!')">Add To Cart</button>
                </form>

            </div>
        </div>
        <%
            } // End For Loop
            out.println("</div>"); // Close the final grid
        } else {
        %>
        <p>No products found.</p>
        <% } %>
    </div>


</body>
</html>

