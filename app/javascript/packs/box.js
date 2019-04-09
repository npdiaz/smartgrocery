function markItemAsBought() {
  const box = document.querySelector(".box");
  box.addEventListener('click' , (event)=> {
    const item = document.querySelector(".item-tobuy");
    const box = document.querySelector(".fa-square")
    item.classList.add('item-tobuy', 'item-bought');
    box.classList.replace('fa-square','fa-check-square');
    }
  )
}

export { markItemAsBought };
