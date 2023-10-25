<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<div class="w-2/5 bg-white mx-5 my-5">
    <nav aria-label="Progress">
        <ol role="list" class="divide-y divide-gray-300 rounded-md border border-gray-300 md:flex md:divide-y-0">
            <li class="relative md:flex md:flex-1">
                <a href="#" class="group flex w-full items-center">
        <span class="flex items-center px-6 py-4 text-sm font-medium">
          <span class="flex h-10 w-10 flex-shrink-0 items-center justify-center rounded-full bg-indigo-600 group-hover:bg-indigo-800">
            <svg class="h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"
                 aria-hidden="true">
              <path fill-rule="evenodd"
                    d="M19.916 4.626a.75.75 0 01.208 1.04l-9 13.5a.75.75 0 01-1.154.114l-6-6a.75.75 0 011.06-1.06l5.353 5.353 8.493-12.739a.75.75 0 011.04-.208z"
                    clip-rule="evenodd"/>
            </svg>
          </span>
          <span class="ml-4 text-sm font-medium text-gray-900">Simuler mon crédit</span>
        </span>
                </a>

                <div class="absolute top-0 right-0 hidden h-full w-5 md:block" aria-hidden="true">
                    <svg class="h-full w-full text-gray-300" viewBox="0 0 22 80" fill="none"
                         preserveAspectRatio="none">
                        <path d="M0 -2L20 40L0 82" vector-effect="non-scaling-stroke" stroke="currentcolor"
                              stroke-linejoin="round"/>
                    </svg>
                </div>
            </li>

            <li class="relative md:flex md:flex-1">
                <a href="#" class="flex items-center px-6 py-4 text-sm font-medium" aria-current="step">
        <span class="flex h-10 w-10 flex-shrink-0 items-center justify-center rounded-full border-2 border-indigo-600">
          <span class="text-indigo-600">02</span>
        </span>
                    <span class="ml-4 text-sm font-medium text-indigo-600">Mes coordonnées</span>
                </a>

                <div class="absolute top-0 right-0 hidden h-full w-5 md:block" aria-hidden="true">
                    <svg class="h-full w-full text-gray-300" viewBox="0 0 22 80" fill="none"
                         preserveAspectRatio="none">
                        <path d="M0 -2L20 40L0 82" vector-effect="non-scaling-stroke" stroke="currentcolor"
                              stroke-linejoin="round"/>
                    </svg>
                </div>
            </li>

            <li class="relative md:flex md:flex-1">
                <a href="#" class="group flex items-center">
        <span class="flex items-center px-6 py-4 text-sm font-medium">
          <span class="flex h-10 w-10 flex-shrink-0 items-center justify-center rounded-full border-2 border-gray-300 group-hover:border-gray-400">
            <span class="text-gray-500 group-hover:text-gray-900">03</span>
          </span>
          <span class="ml-4 text-sm font-medium text-gray-500 group-hover:text-gray-900">Mes infos personnelles</span>
        </span>
                </a>
            </li>
        </ol>
    </nav>
    <form action="/credit/create/step2" method="post" class="flex items-center w-full flex-col ">
        <div class="w-3/4 py-5">
            <label for="project" class="block text-sm font-medium text-gray-700">Mon projet</label>
            <select id="project" name="project"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                <option value="PRET_PERSONNEL">J’ai besoin d’argent</option>
                <option value="OCCASION">Je finance mon véhicule d’occasion</option>
                <option value="REV">Je Gère mes imprévus</option>
                <option value="CREDIT_AUTOMOBILE">Je finance mon véhicule neuf</option>
                <option value="CREDIT_MENAGE">J’équipe ma maison</option>
            </select>
        </div>
        <div class="w-3/4 py-5">
            <label for="travail" class="block text-sm font-medium text-gray-700">Je suis</label>
            <select id="travail" name="travail"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                <option value="SALARIE_PRIVE">Salarié du secteur privé</option>
                <option value="SALARIE_PUBLIC">Fonctionnaire</option>
                <option value="PROFESSION_LIBERALE">Profession libérale</option>
                <option value="COMMERCANT">Commerçant</option>
                <option value="ARTISAN">Artisan</option>
                <option value="RETRAITE">Retraité</option>
                <option value="AUTRE">Autres professions</option>
            </select>
        </div>
        <div class="w-3/4 py-2">
            <label for="montant" class="block text-sm font-medium text-gray-700">montant</label>
            <input required value="5000" min="5000" type="number" id="montant" name="montant"
                   class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
            <input required type="range" value="5000" id="montant-range" max="600000" step="1000" min="5000"
                   class="border mt-1 block w-full rounded-md border-gray-300 py-2  text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="duree" class="block text-sm font-medium text-gray-700">Durée</label>
            <input required value="12" min="12" type="number" id="duree" name="duree"
                   class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
            <input required type="range" value="12" id="duree-range" min="12" max="120" step="6"
                   class="border mt-1 block w-full rounded-md border-gray-300 py-2  text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <input required  value="0" type="text" id="mensualite" name="mensualite"
               class="d-none" hidden="hidden"/>
        <div class="w-3/4 py-2">
            <button
                    onclick="calc()"
                    id="subMainForm"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                Continuer
            </button>
        </div>
    </form>
</div>
<script>
    let montantRange = document.getElementById("montant-range")
    let dureeRange = document.getElementById("duree-range")
    ////////////////////////////////////////
    let montant = document.getElementById("montant")
    let mensualite = document.getElementById("mensualite")
    let duree = document.getElementById("duree")
    let travail = document.getElementById("travail")
    let project = document.getElementById("project")
    let steps = document.querySelector("#steps");
    /////////////////////////
    let projectText = document.getElementById("project-text")
    let travailText = document.getElementById("travail-text")
    ////////////////////////////
    ///////////////////////////////////
    montantRange.addEventListener("input", function () {
        montant.value = montantRange.value;
        document.querySelector("#montant-text").textContent = montantRange.value + " DH"
        calc()
    });
    dureeRange.addEventListener("input", function () {
        duree.value = dureeRange.value;
        document.querySelector("#duree-text").textContent = dureeRange.value + " MOIS"
        calc()
    });
    montant.addEventListener("input", function () {
        montantRange.value = montant.value;
        document.querySelector("#montant-text").textContent = montant.value + " DH"
        calc()
    });
    duree.addEventListener("input", function () {
        dureeRange.value = duree.value;
        document.querySelector("#duree-text").textContent = duree.value + " MOIS"
        calc()
    });

    function calc() {
        const monthlyInterestRate = 0.12 / 12;
        const x = montant.value * monthlyInterestRate;
        const y = Math.pow(1 + monthlyInterestRate, -duree.value);
        let monthlyPayment = x / (1 - y);
        if (isNaN(monthlyPayment)){
            monthlyPayment = 0;
        }
        mensualite.value = monthlyPayment.toFixed(2)
        document.querySelector("#Mensualite-text").textContent = mensualite.value
    }
</script>