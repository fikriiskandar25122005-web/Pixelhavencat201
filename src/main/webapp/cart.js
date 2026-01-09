// Optional: Alert when item added
document.querySelectorAll("button[name='add']").forEach(btn => {
    btn.onclick = function() {
        alert("Item added to cart!");
    };
});
