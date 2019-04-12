function markItemAsBought() {
  var box = document.querySelector(".box");
  box.addEventListener('click' , (event)=> {
    const item = document.getElementById("tobuy");
    const box = document.getElementById("square")
    item.classList.add('item-bought');
    box.classList.replace('fa-square','fa-check-square');
    }
  )
}


// function markItemAsBought() {
//   var box = document.querySelector(".box").innerHTML;
//   if (box.bought == "false") {
//     document.test.elements["savereport"].bought = "True";
//     //document.test.submit();
//   } else {
//     box.bought = "true";
//   }
// }


export { markItemAsBought };
