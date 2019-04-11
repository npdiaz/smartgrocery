function markItemAsBought() {
  const box = document.querySelector(".box");
  box.addEventListener('click' , (event)=> {
    const item = document.getElementById("tobuy");
    const box = document.getElementById("square")
    item.classList.add('item-bought');
    box.classList.replace('fa-square','fa-check-square');
    }
  )
}


// function markItemAsBought() {
//   var box = document.querySelector(".box");
//   if (box.bought.value == "false") {
//     document.test.elements["savereport"].value = "True";
//     //document.test.submit();
//   } else {
//     change.value = "true";
//   }
// }


export { markItemAsBought };
