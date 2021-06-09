function getQuery(query){
    let search = window.location.search;
    let params = new URLSearchParams(search);
    return params.get(query);
}
function ge(el) {
    return (typeof el == 'string' || typeof el == 'number') ? document.getElementById(el) : el;
}