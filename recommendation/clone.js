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
  const selectedBorough = this.value;
  const regions = boroughsToRegions[selectedBorough.toLowerCase()];
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

// Variable to store all data fetched from the server
let allData = {};

// Function to fetch data
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

// Event listener for the recommendation button
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
    if (capitalizedInterest !== 'Events' && item.Region.toLowerCase() !== region) {
      return false;
    }
    if (capitalizedInterest === 'Events') {
      const itemStartDate = new Date(item.Start_Date);
      const itemEndDate = new Date(item.End_Date);
      return itemStartDate <= departureDate && itemEndDate >= arrivalDate;
    }
    return true;
  });

  if (filteredData.length > 3) {
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
    let nameProperty = 'Name'; // Default for Restaurants
    if (interest === 'PlacesToStay') {
      nameProperty = 'p_Name';
    } else if (interest === 'Events') {
      nameProperty = 'e_Name';
    } else if (interest === 'ThingsToDo') {
      nameProperty = 't_Name';
    }

    const nameLink = document.createElement('a');
    nameLink.textContent = item[nameProperty] || 'Name not available';
    nameLink.href = item.Link || '#'; // Provide a fallback in case there's no link
    nameLink.target = "_blank";
    itemElement.appendChild(nameLink);

    if (interest === 'PlacesToStay') {
      itemElement.innerHTML += ` - ${item.Address} - ${item.Rating.toFixed(1)} stars - $${item.PricePerNight}`;
    } else if (interest === 'Restaurants' || interest === 'ThingsToDo') {
      itemElement.innerHTML += ` - ${item.Type || 'Type not available'}, ${item.Address}`;
      if (item.Rating) {
        itemElement.innerHTML += ` - ${item.Rating.toFixed(1)} stars`;
      }
    } else if (interest === 'Events') {
      const startDate = new Date(item.Start_Date);
      const endDate = new Date(item.End_Date);
      const dateFormatOptions = { month: 'long', day: 'numeric' };
      const startDateFormatted = startDate.toLocaleDateString('en-US', dateFormatOptions);
      const endDateFormatted = endDate.toLocaleDateString('en-US', dateFormatOptions);

      itemElement.innerHTML += ` - ${item.Address} - from ${startDateFormatted} to ${endDateFormatted}`;
    }

    recommendationsList.appendChild(itemElement);
  });

  recommendationsPopup.style.display = 'block';
  document.getElementById('recommendations-overlay').style.display = 'block';
}

// Function to close the popup
function closePopup() {
  const recommendationsPopup = document.getElementById('recommendations-popup');
  const recommendationsOverlay = document.getElementById('recommendations-overlay');
  if (recommendationsPopup && recommendationsOverlay) {
    recommendationsPopup.style.display = 'none';
    recommendationsOverlay.style.display = 'none';
  }
}

document.getElementById('recommendations-overlay').addEventListener('click', closePopup);

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
    let nameProperty = 'Name'; // Default for Restaurants
    if (interest === 'PlacesToStay') {
      nameProperty = 'p_Name';
    } else if (interest === 'Events') {
      nameProperty = 'e_Name';
    } else if (interest === 'ThingsToDo') {
      nameProperty = 't_Name';
    }

    const nameLink = document.createElement('a');
    nameLink.textContent = item[nameProperty] || 'Name not available';
    nameLink.href = item.Link || '#'; // Provide a fallback in case there's no link
    nameLink.target = "_blank";
    itemElement.appendChild(nameLink);

    if (interest === 'PlacesToStay') {
      itemElement.innerHTML += ` - ${item.Address} - ${item.Rating.toFixed(1)} stars - $${item.PricePerNight}`;
    } else if (interest === 'Restaurants' || interest === 'ThingsToDo') {
      itemElement.innerHTML += ` - ${item.Type || 'Type not available'}, ${item.Address}`;
      if (item.Rating) {
        itemElement.innerHTML += ` - ${item.Rating.toFixed(1)} stars`;
      }
    } else if (interest === 'Events') {
      const startDate = new Date(item.Start_Date);
      const endDate = new Date(item.End_Date);
      const dateFormatOptions = { month: 'long', day: 'numeric' };
      const startDateFormatted = startDate.toLocaleDateString('en-US', dateFormatOptions);
      const endDateFormatted = endDate.toLocaleDateString('en-US', dateFormatOptions);

      itemElement.innerHTML += ` - ${item.Address} - from ${startDateFormatted} to ${endDateFormatted}`;
    }

    recommendationsList.appendChild(itemElement);
  });

  recommendationsPopup.style.display = 'block';
  document.getElementById('recommendations-overlay').style.display = 'block';
}

// Function to close the popup
function closePopup() {
  const recommendationsPopup = document.getElementById('recommendations-popup');
  const recommendationsOverlay = document.getElementById('recommendations-overlay');
  if (recommendationsPopup && recommendationsOverlay) {
    recommendationsPopup.style.display = 'none';
    recommendationsOverlay.style.display = 'none';
  }
}

document.getElementById('recommendations-overlay').addEventListener('click', closePopup);


function overlapsWithDateRange(start1, end1, start2, end2) {
  return start1 <= end2 && end1 >= start2;
}

function displayRecommendations(data, interest) {
  const recommendationsPopup = document.getElementById('recommendations-popup');
  const recommendationsList = document.getElementById('recommendations-content');

  if (!recommendationsPopup || !recommendationsList) {
    console.error('Some HTML elements for displaying recommendations are missing.');
    return;
  }

  recommendationsList.innerHTML = '';

  data.forEach(item => {
    const itemElement = document.createElement('p');
    let nameProperty = 'Name';
    if (interest === 'PlacesToStay') {
      nameProperty = 'p_Name';
    } else if (interest === 'Events') {
      nameProperty = 'e_Name';
    } else if (interest === 'ThingsToDo') {
      nameProperty = 't_Name';
    }

    const nameLink = document.createElement('a');
    nameLink.textContent = item[nameProperty] || 'Name not available';
    nameLink.href = item.Link || '#';
    nameLink.target = "_blank";
    itemElement.appendChild(nameLink);

    if (interest === 'PlacesToStay') {
      const rating = item.Rating ? (item.Rating * 1).toFixed(1) : 'N/A';
      const stars = item.Rating ? '⭐'.repeat(Math.round(item.Rating)) : '';
      itemElement.innerHTML += ` - ${item.Address} - ${rating} ${stars} - $${item.PricePerNight}`;
    } else if (interest === 'Restaurants') {
      const typeText = item.CuisineType || 'Type not available';
      const addressText = item.Address || 'Address not available';
      const rating = item.Rating ? (item.Rating * 1).toFixed(1) : 'N/A';
      const stars = item.Rating ? '⭐'.repeat(Math.round(item.Rating)) : '';

      itemElement.innerHTML += ` - ${typeText} - ${addressText} - ${rating} ${stars}`;
    } else if (interest === 'ThingsToDo') {
      const typeText = item.t_Type || 'Type not available';
      const addressText = item.Address || 'Address not available';

      itemElement.innerHTML += ` - ${typeText} - ${addressText}`;
    } else if (interest === 'Events') {
      const addressText = item.Address || 'Address not available';
      const startDate = new Date(item.Start_Date);
      const endDate = new Date(item.End_Date);
      const dateFormatOptions = { month: 'long', day: 'numeric' };
      const startDateFormatted = startDate.toLocaleDateString('en-US', dateFormatOptions);
      const endDateFormatted = endDate.toLocaleDateString('en-US', dateFormatOptions);

      if (startDate.getTime() === endDate.getTime()) {
        itemElement.innerHTML += ` - ${addressText} - ${startDateFormatted}`;
      } else {
        itemElement.innerHTML += ` - ${addressText} - ${startDateFormatted} to ${endDateFormatted}`;
      }
    }

    recommendationsList.appendChild(itemElement);
  });

  recommendationsPopup.style.display = 'block';
  document.getElementById('recommendations-overlay').style.display = 'block';
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

