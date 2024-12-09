const apiKey = "2ebecddb621091bf964fc3051d0925fb";

document.getElementById('searchBtn').addEventListener('click', () => {
  const city = document.getElementById('city').value;
  if (city) {
    fetchWeather(city);
  } else {
    alert("Please enter a city name.");
  }
});

function fetchWeather(city) {
  const url = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;

  fetch(url)
    .then(response => {
      if (!response.ok) {
        throw new Error("City not found");
      }
      return response.json();
    })
    .then(data => displayWeather(data))
    .catch(error => alert(error.message));
}

function displayWeather(data) {
  const { name } = data;
  const { temp, humidity } = data.main;
  const { description, icon } = data.weather[0];
  const { speed } = data.wind;

  document.getElementById('weatherInfo').innerHTML = `
    <h2>Weather in ${name}</h2>
    <img src="https://openweathermap.org/weathermap?basemap=map&cities=true&layer=temperature&lat=30&lon=-20&zoom=5" alt="${description}">
    <p>${description.toUpperCase()}</p>
    <p>Temperature: ${temp}°C</p>
    <p>Humidity: ${humidity}%</p>
    <p>Wind Speed: ${speed} m/s</p>
  `;
}
