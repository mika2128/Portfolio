let url_base = 'http://localhost:3000';

async function getScoreLevel(id) {
    let response = await fetch(url_base + '/highscore/' + id);
    let data = await response.json();    
    return data;
}
async function getObstaclesl(id) {
    let response = await fetch(url_base + '/obstacles/' + id);
    let data = await response.json();    
    return data;
}
async function getBonus(id) {
    let response = await fetch(url_base + '/bonus/' + id);
    let data = await response.json();    
    return data;
}
async function getPlayers(id) {
    let response = await fetch(url_base + '/players/' + id);
    let data = await response.json();    
    return data;
}
/* const api = (() => {
    const baseUrl = 'http://localhost:3000';
  
    const fetchObstacles = (id, name) => {
      const url = `${baseUrl}/obstacles/${id}?location=${name}`;
      return fetch(url).then((result) => result.json());
    };
  
    return { fetchObstacles };
  })(); */

