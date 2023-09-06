(function ($) {
    "use strict";

    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();
    
    
    // Initiate the wowjs
    new WOW().init();


    // Fixed Navbar
    $(window).scroll(function () {
        if ($(window).width() < 992) {
            if ($(this).scrollTop() > 45) {
                $('.fixed-top').addClass('bg-white shadow');
            } else {
                $('.fixed-top').removeClass('bg-white shadow');
            }
        } else {
            if ($(this).scrollTop() > 45) {
                $('.fixed-top').addClass('bg-white shadow').css('top', -45);
            } else {
                $('.fixed-top').removeClass('bg-white shadow').css('top', 0);
            }
        }
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 100, 'easeInOutExpo');
        return false;
    });


    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });
	
	
  //teas select
const filterOptions = document.querySelectorAll('.search_option .item');
const teaItems = document.querySelectorAll('.tea_list .item');

let selectedTaste = null;
let selectedCategory = null;

filterOptions.forEach(option => {
  option.addEventListener('click', () => {
    const category = option.getAttribute('data-category');
    const taste = option.getAttribute('data-taste');

    const isSelected = option.classList.contains('active');

    if (isSelected) {
      option.classList.remove('active');
      if (category === selectedCategory) {
        selectedCategory = null;
      }
      if (taste === selectedTaste) {
        selectedTaste = null;
      }
    } else {
      filterOptions.forEach(item => {
        item.classList.remove('active');
      });
      option.classList.add('active');
      selectedCategory = category === '全部' ? null : category;
      selectedTaste = taste === '全部' ? null : taste;
    }

    teaItems.forEach(item => {
      const itemCategory = item.getAttribute('data-category');
      const itemTaste = item.getAttribute('data-taste');

      const showItem =
        (!selectedCategory || itemCategory === selectedCategory || selectedCategory === '全部') &&
        (!selectedTaste || itemTaste === selectedTaste || selectedTaste === '全部');

      item.style.display = showItem ? 'block' : 'none';

      const itemIsActive = showItem && (itemCategory === selectedCategory || itemTaste === selectedTaste);
      item.style.opacity = itemIsActive ? '1' : '1';
    });
  });
});//teas end

//心理測驗	
window.addEventListener('load', function () {
  var myModal = new bootstrap.Modal(document.getElementById('exampleModaltest'));
  myModal.show();
  
  // 設置已顯示過測試的標誌
  localStorage.setItem('hasShownTest', 'true');
});

document.getElementById('openTestButton').addEventListener('click', function() {
  currentQuestion = 0; // 重置為第一個問題
  answers = []; // 清空答案

  // 调用显示第一个问题的函数
  displayQuestion();
});

// keyvision
// 获取 #closetest 元素
var closetestButton = document.getElementById("closetest");

// 获取 user-icon 元素
var modal = document.getElementById('exampleModaltest');

// 定义共享的事件处理程序函数
function handleAnimationAndCloseModal() {
    // 关闭模态框
    $('#exampleModaltest').modal('hide');

    // 执行动画
    var images = document.querySelectorAll(".image");
    var delays = {
        "img/kv3.png": 1500,
        "img/kv4.png": 1500,
        "img/kv5.png": 1500,
        "img/kv7.png": 2500,
        "img/kv9.png": 2500
    }; // 不同图片的延迟时间（毫秒）

    images.forEach(function(image) {
        var src = image.getAttribute("src");
        var delay = delays[src] || 500; // 使用对应的延迟时间，如果未定义则默认1000（毫秒）

        setTimeout(function() {
            image.style.opacity = "1";
            image.style.transform = "translateX(0)";
        }, delay);
    });
}

// 给 #closetest 元素添加点击事件处理程序
closetestButton.addEventListener("click", handleAnimationAndCloseModal);

// 给模态框添加 hidden.bs.modal 事件处理程序
modal.addEventListener("hidden.bs.modal", handleAnimationAndCloseModal);



  // Initialize the partner carousel
  $(document).ready(function() {
    $('.partner-carousel').owlCarousel({
      loop: true,
      margin: 30,
      nav: false,
      dots: false,
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true,
      responsive: {
        0: {
          items: 1
        },
        576: {
          items: 2
        },
        768: {
          items: 3
        },
        992: {
          items: 4
        }
      }
    });

    // Custom navigation
    $('.carousel-nav-prev').click(function() {
      $('.partner-carousel').trigger('prev.owl.carousel');
    });

    $('.carousel-nav-next').click(function() {
      $('.partner-carousel').trigger('next.owl.carousel');
    });
  });


	
	
	// Project carousel
    $(".project-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        margin: 25,
        loop: true,
        center: true,
        dots: false,
        nav: true,
        navText : [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ],
        responsive: {
			0:{
                items:1
            },
            576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        center: true,
        margin: 24,
        dots: true,
        loop: true,
        nav : false,
        responsive: {
            0:{
                items:1
            },
			576:{
                items:1
            },
            768:{
                items:2
            },
            992:{
                items:3
            }
        }
    });
})(jQuery);
  //teas select
  const filterOptions = document.querySelectorAll('.search_option .item');
const teaItems = document.querySelectorAll('.tea_list .item');

let selectedTaste = null;
let selectedCategory = null;

filterOptions.forEach(option => {
  option.addEventListener('click', () => {
    const category = option.getAttribute('data-category');
    const taste = option.getAttribute('data-taste');

    const isSelected = option.classList.contains('active');

    if (isSelected) {
      option.classList.remove('active');
      if (category === selectedCategory) {
        selectedCategory = null;
      }
      if (taste === selectedTaste) {
        selectedTaste = null;
      }
    } else {
      filterOptions.forEach(item => {
        item.classList.remove('active');
      });
      option.classList.add('active');
      selectedCategory = category === '全部' ? null : category;
      selectedTaste = taste === '全部' ? null : taste;
    }

    teaItems.forEach(item => {
      const itemCategory = item.getAttribute('data-category');
      const itemTaste = item.getAttribute('data-taste');

      const showItem =
        (!selectedCategory || itemCategory === selectedCategory || selectedCategory === '全部') &&
        (!selectedTaste || itemTaste === selectedTaste || selectedTaste === '全部');

      item.style.display = showItem ? 'block' : 'none';

      const itemIsActive = showItem && (itemCategory === selectedCategory || itemTaste === selectedTaste);
      item.style.opacity = itemIsActive ? '1' : '1';
    });
  });
});//teas end

// 獲取圖標元素
function jumpIcon(pin) {
  // 添加 'jump' 类以触发跳动动画
  pin.classList.add('jump');

  // 在一段时间后，移除 'jump' 类，以允许重复触发
  setTimeout(() => {
    pin.classList.remove('jump');

    // 等待1秒后，跳转到目标位置
    setTimeout(() => {
      const targetId = pin.getAttribute('data-target');
      const targetElement = document.getElementById(targetId);
      if (targetElement) {
        targetElement.scrollIntoView({ behavior: 'smooth' });
      }
    }, 400); // 等待1秒再执行跳转，单位是毫秒
  }, 200); // 调整时间以控制跳动速度，单位是毫秒
}

  // 获取用户点击上传新头像的按钮
  var uploadButton = document.getElementById("upload-button");

  // 给上传按钮添加点击事件处理程序
  uploadButton.addEventListener("click", function () {
    // 弹出文件选择器，让用户选择新的头像文件
    var fileInput = document.createElement("input");
    fileInput.type = "file";
    fileInput.accept = "image/*";
    
    // 当用户选择文件后
    fileInput.addEventListener("change", function (event) {
      var file = event.target.files[0];
      if (file) {
        // 创建一个URL对象，用于在<img>中显示新头像
        var imageURL = URL.createObjectURL(file);

        // 更新<img>的src属性以显示新头像
        var userIcon = document.getElementById("user-icon");
        userIcon.src = imageURL;

        // 释放URL对象，以防止内存泄漏
        URL.revokeObjectURL(imageURL);
      }
    });

    // 触发文件选择器
    fileInput.click();
  });