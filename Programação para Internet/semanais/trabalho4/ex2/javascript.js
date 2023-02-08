document.addEventListener('DOMContentLoaded', function() {
    const nodeH2 = document.querySelectorAll("h2");
    for (let node of nodeH2) {
        node.addEventListener("click", function () {
            node.nextElementSibling.style.display = 'none';
            //this.nextElementSibling.nextElementSibling.style.display = 'none';
        });
    }
    for (let node of nodeH2) {
        node.addEventListener("dblclick", function () {
            node.nextElementSibling.style.display = 'block';
           // this.nextElementSibling.nextElementSibling.style.display = 'block';
        });
    }
});