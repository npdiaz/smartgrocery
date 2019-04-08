function searchRecipes() {

  const results = document.querySelector("#results");

  const searchRecipes = (keyword) => {
    const apiUrl =`https://api.edamam.com/search?q=${ingredient}&app_id=50d11f14&app_key=29ef814f0c2b57f0d628274409f79240`
    fetch(apiUrl)
    .then(response => response.json())
    .then((data) => {
      data.Search.forEach((recipe) => {
        const newRecipe = `<li>
        <img src="${recipe.Image}" />
        <p>${recipe.Title}</p>
        </li>`
        results.insertAdjacentHTML('beforeend', newRecipe)
      });
    });
  }

  const searchForm = document.querySelector("#search-recipes");

  searchForm.addEventListener('summit', (event) => {
    event.preventdefault();
    results.innerHTML = "";
    const keywordInput = document.querySelector("#keyword").value;
    searchRecipes(keyword);

  });
  // Default content to the page
  searchRecipes("Chicken");
};

export { searchRecipes };



