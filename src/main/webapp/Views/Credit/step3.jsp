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
          <span class="flex h-10 w-10 flex-shrink-0 items-center justify-center rounded-full bg-indigo-600 group-hover:bg-indigo-800">
            <svg class="h-6 w-6 text-white" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor"
                 aria-hidden="true">
              <path fill-rule="evenodd"
                    d="M19.916 4.626a.75.75 0 01.208 1.04l-9 13.5a.75.75 0 01-1.154.114l-6-6a.75.75 0 011.06-1.06l5.353 5.353 8.493-12.739a.75.75 0 011.04-.208z"
                    clip-rule="evenodd"/>
            </svg>
          </span>
          <span class="ml-4 text-sm font-medium text-gray-500 group-hover:text-gray-900">Mes infos personnelles</span>
        </span>
                </a>
            </li>
        </ol>
    </nav>
    <form action="/credit/create/finish" method="post" class="flex items-center py-5 w-full flex-col ">
        <div class="w-3/4 py-2">
            <label for="firstName" class="block text-sm font-medium text-gray-700">First Name</label>
            <input disabled  value="${client.firstName}" type="text" id="firstName" name="firstName"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="lastName" class="block text-sm font-medium text-gray-700">Last Name</label>
            <input disabled  value="${client.lastName}" type="text" id="lastName" name="lastName"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="birthDate" class="block text-sm font-medium text-gray-700">Birthday</label>
            <input disabled  value="${client.birthDate}" type="date" id="birthDate" name="birthDate"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="mobile" class="block text-sm font-medium text-gray-700">Phone Number</label>
            <input disabled  value="${client.mobile}" type="text" id="mobile" name="mobile"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="address" class="block text-sm font-medium text-gray-700">address</label>
            <input disabled  value="${client.address}" type="text" id="address" name="address"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
        <div class="w-3/4 py-2">
            <label for="code" class="block text-sm font-medium text-gray-700">Code</label>
            <input disabled  value="${client.code}" type="text" id="code" name="code"
                    class="border mt-1 block w-full rounded-md border-gray-300 py-2 pl-3 pr-10 text-base focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm"/>
        </div>
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