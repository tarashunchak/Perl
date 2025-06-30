const modal = new bootstrap.Modal(document.getElementById('editModal'));
const nameInput = document.getElementById('nameInput');
const cityInput = document.getElementById('cityInput');
const emailInput = document.getElementById('emailInput');
const cardIndexInput = document.getElementById('cardIndex');

document.querySelectorAll('.edit-btn').forEach((btn, index) => {
    btn.addEventListener('click', () => {
    const card = btn.closest('.card');
    const name = card.querySelector('.user-name').textContent;
    const city = card.querySelector('.user-city').textContent;
    const email = card.querySelector('.user-email').textContent;
    
    const formData = new FormData();
    formData.append("user_id", index);
    formData.append("name", nameInput.value);
    formData.append("city", cityInput.value);
    formData.append("email", emailInput.value);

    fetch("./perl.pl",{ method: "POST", body: formData});

    nameInput.value = name;
    cityInput.value = city;
    emailInput.value = email;
    cardIndexInput.value = index;

    modal.show();
    });
});

document.getElementById('saveBtn').addEventListener('click', () => {
    const index = cardIndexInput.value;
    const card = document.querySelectorAll('.card')[index];
    card.querySelector('.user-name').textContent = nameInput.value;
    card.querySelector('.user-city').textContent = cityInput.value;
    card.querySelector('.user-email').textContent = emailInput.value;
    modal.hide();
});