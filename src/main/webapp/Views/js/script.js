document.addEventListener('DOMContentLoaded', function () {
    const openAddForm = document.getElementById('openAddForm');
    const addForm = document.getElementById('addForm');
    const addOverlay = document.getElementById('addOverlay');
    const closeAddForm = document.getElementById('closeAddForm');
    const deleteOverlay = document.getElementById('deleteOverlay');
    const closeDeleteForm = document.getElementById('closeDeleteForm');
    const updateOverlay = document.getElementById('updateOverlay');
    const closeUpdateForm = document.getElementById('closeUpdateForm');
    const alert = document.getElementById('alert');
    const closeAlert = document.getElementById('closeAlert');
    const deleteForm = document.getElementById('deleteForm');
    const updateForm = document.getElementById('updateForm');

    if (addForm) {

        openAddForm.addEventListener('click', function () {
            addForm.classList.remove('hidden');
        });
        addOverlay.addEventListener('click', function (event) {
            if (event.target === addOverlay) {
                addForm.classList.add('hidden');
            }
        });
        closeAddForm.addEventListener('click', function () {
            addForm.classList.add('hidden');
        });
    }
    if (deleteForm) {

        deleteOverlay.addEventListener('click', function (event) {
            if (event.target === deleteOverlay) {
                deleteForm.classList.add('hidden');
            }
        });
        closeDeleteForm.addEventListener('click', function () {
            deleteForm.classList.add('hidden');
        });
    }
    if (updateForm) {

        updateOverlay.addEventListener('click', function (event) {
            if (event.target === updateOverlay) {
                updateForm.classList.add('hidden');
            }
        });
        closeUpdateForm.addEventListener('click', function () {
            updateForm.classList.add('hidden');
        });
    }
    if (alert) {
        setTimeout(function () {
            alert.style.display = 'none';
        }, 4000);
        closeAlert.addEventListener('click', function () {
            alert.classList.add('hidden');
        });
    }
});

function populateDelete(code) {
    const deleteForm = document.getElementById('deleteForm');
    document.getElementById('deleteCode').value = code;
    deleteForm.classList.remove('hidden');
}

function populateUpdate(code, firstName, lastName, birthDate, mobile, address) {
    const updateForm = document.getElementById('updateForm');
    document.getElementById('updateCode').value = code;
    document.getElementById('updateFirstName').value = firstName;
    document.getElementById('updateLastName').value = lastName;
    document.getElementById('updateBirthDate').value = birthDate;
    document.getElementById('updateMobile').value = mobile;
    document.getElementById('updateAddress').value = address;
    updateForm.classList.remove('hidden');
}

function populate_Update(matricule, firstName, lastName, birthDate, mobile, recruitmentDate, email) {
    const updateForm = document.getElementById('updateForm');
    document.getElementById('updateMatricule').value = matricule;
    document.getElementById('updateFirstName').value = firstName;
    document.getElementById('updateLastName').value = lastName;
    document.getElementById('updateBirthDate').value = birthDate;
    document.getElementById('updateMobile').value = mobile;
    document.getElementById('updateRecruitmentDate').value = recruitmentDate;
    document.getElementById('updateEmail').value = email;
    updateForm.classList.remove('hidden');
}