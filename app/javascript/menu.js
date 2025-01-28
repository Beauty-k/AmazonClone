import 'jquery'

// document.addEventListener("DOMContentLoaded", () => {
//     const menu = document.querySelector(".menu");
//     const renderMenu = document.querySelector(".render");

//     menu.addEventListener("click", () => {
//         fetch("/render_partial")
//         .then(response => response.text())
//         .then(html =>{
//             renderMenu.innerHTML = html;
//         })
//         .catch(error => console.error("Error loading partial:", error));
//     })
// })

// $(document).ready(() => {
//     $("#load-partial-btn").click(() => {
//       $.get("/load_partial", (data) => {
//         $("#dynamic-content").html(data);
//       }).fail(() => {
//         console.error("Error loading partial");
//       });
//     });
//   });