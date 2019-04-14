/**
 *
 * @author Sami  Disha Fahim
 */

var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex - 1].style.display = "block";
    dots[slideIndex - 1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds

}

function openModal() {
    document.getElementById('myModal').style.display = "block";
}

function closeModal() {
    document.getElementById('myModal').style.display = "none";
}

var slideIndexx = 1;
showSlidesGallery(slideIndexx);

function plusSlides(n) {
    showSlidesGallery(slideIndexx += n);
}

function currentSlide(n) {
    showSlidesGallery(slideIndexx = n);
}

function showSlidesGallery(n) {
    var j;
    var Galleryslides = document.getElementsByClassName("myGallerySlides");
    var dott = document.getElementsByClassName("demo");
    var captionText = document.getElementById("caption");
    if (n > Galleryslides.length) {
        slideIndexx = 1
    }
    if (n < 1) {
        slideIndexx = Galleryslides.length
    }
    for (j = 0; j < Galleryslides.length; j++) {
        Galleryslides[j].style.display = "none";
    }
    for (j = 0; j < dott.length; j++) {
        dott[j].className = dott[j].className.replace(" actived", "");
    }
    Galleryslides[slideIndexx - 1].style.display = "block";
    dott[slideIndexx - 1].className += " actived";
    captionText.innerHTML = dott[slideIndexx - 1].alt;
}
