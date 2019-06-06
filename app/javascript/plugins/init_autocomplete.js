import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('activity_meeting_point');
  if (addressInput) {
    places({ container: addressInput }).on('change', function resultSelected(e) {
      const latlng = e.suggestion.latlng
      const latInput = document.getElementById('activity_latitude')
      const lngInput = document.getElementById('activity_longitude')
      latInput.value = latlng.lat
      lngInput.value = latlng.lng
    });
  }
};


export { initAutocomplete };
