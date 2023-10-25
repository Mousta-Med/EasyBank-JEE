<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="w-2/5 	 bg-white mx-5 my-5">
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
          <span class="ml-4 text-sm font-medium text-gray-900">Mes coordonnées</span>
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
    <div class="flex items-center w-full flex-col ">
        <div class="w-full border reounded p-2 flex">
            <form id="searchForm" action="/credit/create/step2" method="get" class="px-3 w-3/4">
            <label for="clientSearch" class="block text-sm font-medium text-gray-700">Search for Client</label>
                <input required  type="search" id="clientSearch" name="clientSearch" value="${clientSearch}"
                   class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
                <button type="submit" hidden="hidden">search</button>
            </form>
            <div class="w-3/4 px-3">
                <label for="client" class="block text-sm font-medium text-gray-700">Select Client</label>
                <select id="client" name="client" form="myform"
                        class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                    <c:forEach items="${clients}" var="client">
                        <option value="${client.code}">${client.lastName}</option>
                    </c:forEach>
                </select>
            </div>
        </div>
        <div class="w-full border reounded p-2 flex">
            <div class="w-3/4 px-3">
                <label for="agenceSearch" class="block text-sm font-medium text-gray-700">Search for Agence</label>
                <input required type="search" id="agenceSearch" name="agenceSearch" form="searchForm" value="${agenceSearch}"
                       class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
                <button type="submit" hidden="hidden">search</button>
            </div>
            <form method="post" action="/credit/create/step3" id="myform" class="w-3/4 px-3">
                <label for="agence" class="block text-sm font-medium text-gray-700">Select Agence</label>
                <select id="agence" name="agence"
                        class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
                    <c:forEach items="${agences}" var="agence">
                        <option value="${agence.code}">${agence.nom}</option>
                    </c:forEach>
                </select>
            </form>
        </div>
        <div class="w-full border reounded p-2 flex">
            <input required name="remarque" form="myform"
                      class="p-2 border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
        </div>
        <button form="myform"
                class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm">
            Continuer
        </button>
    </div>
</div>