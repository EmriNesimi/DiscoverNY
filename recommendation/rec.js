// Define regions for each borough
const boroughsToRegions = {
  manhattan: ["Inwood and Washington Heights", "Central Harlem", "East Harlem", "Upper West Side", "Upper East Side", "Chelsea and Clinton", "Gramercy Park and Murray Hill", "Greenwich Village and Soho", "Union Square and Lower East Side", "Lower Manhattan"],
  brooklyn: ["Greenpoint", "Northwest Brooklyn", "Central Brooklyn", "East New York and New Lots", "Sunset Park", "Southwest Brooklyn", "Borough Park", "Canarsie and Flatlands", "Southern Brooklyn", "Flatbush", "Bushwick and Williamsburg"],
  queens: ["Long Island City and Astoria", "West Queens", "North Queens", "Northeast Queens", "West Central Queens", "Central Queens", "Southwest Queens", "Jamaica", "Southeast Queens", "Rockaways"],
  bronx: ["Kingsbridge and Riverdale", "Northeast Bronx", "Crotona and Tremont", "Bronx Park and Fordham", "Pelham and Throgs Neck", "HighBridge and Morrisania", "Hunts Point and Mott Haven"],
  statenisland: ["Port Richmond", "South Beach and Tottenville", "Stapleton and St. George", "Mid-Island"]
};

// Event listener for changing boroughs
document.getElementById('borough').addEventListener('change', function() {
  const selectedBorough = this.value.toLowerCase();
  const regions = boroughsToRegions[selectedBorough];
  const regionSelect = document.getElementById('region');
  regionSelect.innerHTML = ''; // Clear previous options
  regions.forEach(region => {
    const option = document.createElement('option');
    option.value = region.toLowerCase().replace(/\s+/g, '-');
    option.innerText = region;
    regionSelect.appendChild(option);
  });
  document.getElementById('region-group').style.display = 'block';
});

let allData = {};

// Function to fetch data from server
function fetchData() {
  fetch('data.json')
    .then(response => response.json())
    .then(data => {
      allData = data;
      console.log('Data successfully loaded', allData);
    })
    .catch(error => console.error('Failed to load data:', error));
}

// Call fetchData on load
fetchData();

document.getElementById('get-recommendations-btn').addEventListener('click', function() {
  const interest = document.getElementById('interest').value;
  const capitalizedInterest = interest.charAt(0).toUpperCase() + interest.slice(1);

  if (!allData[capitalizedInterest]) {
    console.error(`Data for this category is not loaded or undefined: ${capitalizedInterest}`);
    return;
  }

  const borough = document.getElementById('borough').value.toLowerCase();
  const region = document.getElementById('region').value.replace(/-/g, ' ').toLowerCase();
  const arrivalInput = document.getElementById('arrival-date').value;
  const departureInput = document.getElementById('departure-date').value;

  const arrivalDate = new Date(arrivalInput);
  const departureDate = new Date(departureInput);

    let filteredData = allData[capitalizedInterest].filter(item => {
    const matchesBorough = item.Borough.toLowerCase() === borough;
    const matchesRegion = item.Region.toLowerCase() === region; 


    if (capitalizedInterest === 'Events') {
      const eventStartDate = new Date(item.Start_Date);
      const eventEndDate = new Date(item.End_Date);
      return matchesBorough && matchesRegion &&
             eventStartDate >= arrivalDate && eventEndDate <= departureDate;
    }

    return matchesBorough && matchesRegion;
  });

  // Special handling for Restaurants to limit to 3 random entries if more than three
  if (capitalizedInterest === 'Restaurants' && filteredData.length > 3) {
    filteredData = filteredData.sort(() => 0.5 - Math.random()).slice(0, 3);
  }

  displayRecommendations(filteredData, capitalizedInterest);
});

function displayRecommendations(data, interest) {
  const recommendationsPopup = document.getElementById('recommendations-popup');
  const recommendationsList = document.getElementById('recommendations-content');

  if (!recommendationsPopup || !recommendationsList) {
    console.error('Some HTML elements for displaying recommendations are missing.');
    return;
  }

  recommendationsList.innerHTML = ''; // Clear previous content

  data.forEach(item => {
    const itemElement = document.createElement('p');
    const nameLink = document.createElement('a');
    nameLink.target = "_blank"; // Open in a new tab

    // Customize display based on the category
    if (interest === 'Restaurants') {
      nameLink.textContent = item.Name || 'Name not available';
      nameLink.href = item.Link || '#';
      itemElement.appendChild(nameLink);
      itemElement.innerHTML += ` - ${item.CuisineType || 'Cuisine not available'}, ${item.Address} - ${'⭐'.repeat(Math.round(item.Rating))} (${item.Rating.toFixed(1)})`;
    } else if (interest === 'PlacesToStay') {
      nameLink.textContent = item.p_Name || 'Name not available';
      nameLink.href = item.Link || '#';
      itemElement.appendChild(nameLink);
      itemElement.innerHTML += ` - ${item.Address} - ${'⭐'.repeat(Math.round(item.Rating))} (${item.Rating.toFixed(1)}) - $${item.PricePerNight} per night`;
    } else if (interest === 'ThingsToDo') {
      nameLink.textContent = item.t_Name || 'Name not available';
      nameLink.href = item.Link || '#';
      itemElement.appendChild(nameLink);
      // Add the type for Things to Do
      itemElement.innerHTML += ` - ${item.t_Type || 'Type not available'}, ${item.Address}`;
    } else if (interest === 'Events') {
      nameLink.textContent = item.e_Name || 'Name not available';
      nameLink.href = item.Link || '#';
      itemElement.appendChild(nameLink);
      // Date formatting for Events
      const startDate = new Date(item.Start_Date).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' });
      const endDate = new Date(item.End_Date).toLocaleDateString('en-US', { month: 'long', day: 'numeric', year: 'numeric' });
      itemElement.innerHTML += ` - ${item.Address} - from ${startDate} to ${endDate}`;
    }

    recommendationsList.appendChild(itemElement);
  });

  recommendationsPopup.style.display = 'block'; // Display the recommendations popup
  document.getElementById('recommendations-overlay').style.display = 'block'; // Display the overlay
}
function closePopup() {
  const recommendationsPopup = document.getElementById('recommendations-popup');
  const recommendationsOverlay = document.getElementById('recommendations-overlay');
  if (recommendationsPopup && recommendationsOverlay) {
    recommendationsPopup.style.display = 'none';
    recommendationsOverlay.style.display = 'none';
  }
}

document.getElementById('recommendations-overlay').addEventListener('click', closePopup);
