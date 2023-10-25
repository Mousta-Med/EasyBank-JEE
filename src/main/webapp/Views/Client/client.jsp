<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Clients</title>
</head>
<body class="flex flex-col min-h-screen">
<jsp:include page="../Includes/navbar.jsp"></jsp:include>
<c:if test="${not empty message}">
<jsp:include page="../Includes/alert.jsp"></jsp:include>
</c:if>
<div class="px-10 py-10">
    <div class="sm:flex sm:items-center">
        <div class="sm:flex-auto">
            <h1 class="text-xl font-semibold text-gray-900">Clients</h1>
            <p class="mt-2 text-sm text-gray-700">A list of all the Clients in your account including their name, title,
                email and more.</p>
        </div>
        <form class="m-0" action="<%= request.getContextPath() %>/client" method="post">
            <div class="flex justify-center items-center">
                <div class="min-w-0 flex-1 md:px-8 lg:px-0 xl:col-span-6">
                    <div class="flex items-center px-6 py-4 md:mx-auto md:max-w-3xl lg:mx-0 lg:max-w-none xl:px-0">
                        <div class="w-full">
                            <label for="search" class="sr-only">Search</label>
                            <div class="relative">
                                <div class="pointer-events-none absolute inset-y-0 left-0 flex items-center pl-3">
                                    <!-- Heroicon name: mini/magnifying-glass -->
                                    <svg class="h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg"
                                         viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
                                        <path fill-rule="evenodd"
                                              d="M9 3.5a5.5 5.5 0 100 11 5.5 5.5 0 000-11zM2 9a7 7 0 1112.452 4.391l3.328 3.329a.75.75 0 11-1.06 1.06l-3.329-3.328A7 7 0 012 9z"
                                              clip-rule="evenodd"/>
                                    </svg>
                                </div>
                                <input id="search" name="code"
                                       class="block w-full rounded-md border border-gray-300 bg-white py-2 pl-10 pr-3 text-sm placeholder-gray-500 focus:border-indigo-500 focus:text-gray-900 focus:placeholder-gray-400 focus:outline-none focus:ring-1 focus:ring-indigo-500 sm:text-sm"
                                       placeholder="Search" type="search">
                            </div>
                        </div>
                    </div>
                </div>
                <button type="submit"
                        class="ml-6 inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                    Search
                </button>
            </div>
        </form>
        <div class="mt-4 sm:mt-0 sm:ml-16 sm:flex-none">
            <button type="button" id="openAddForm"
                    class="inline-flex items-center justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:w-auto">
                Add Client
            </button>
        </div>
    </div>
    <div class="mt-8 flex flex-col">
        <div class="-my-2 -mx-4 overflow-x-auto sm:-mx-6 lg:-mx-8">
            <div class="inline-block min-w-full py-2 align-middle md:px-6 lg:px-8">
                <div class="overflow-hidden shadow ring-1 ring-black ring-opacity-5 md:rounded-lg">
                    <table class="min-w-full divide-y divide-gray-300">
                        <thead class="bg-gray-50">
                        <tr>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Code</th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                FirstName
                            </th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">LastName
                            </th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">
                                BirthDate
                            </th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Mobile
                            </th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Address
                            </th>
                            <th scope="col" class="px-3 py-3.5 text-left text-sm font-semibold text-gray-900">Actions
                            </th>
                        </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200 bg-white">
                        <c:forEach var="client" items="${clients}">
                            <tr>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.code}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.firstName}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.lastName}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.birthDate}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.mobile}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">${client.address}</td>
                                <td class="whitespace-nowrap px-3 py-4 text-sm text-gray-500">
                                    <button onclick="populateUpdate('${client.code}','${client.firstName}','${client.lastName}','${client.birthDate}','${client.mobile}','${client.address}')" class="text-indigo-600 hover:text-indigo-900">Edit</button>
                                    <a class="text-black">|</a>
                                    <button onclick="populateDelete('${client.code}')" class="text-red-400 hover:text-red-700">Delete</button>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../Includes/footer.jsp"></jsp:include>
<div id="addForm" class="hidden">
    <div class="relative z-10" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="fixed inset-0 bg-black bg-opacity-75 transition-opacity"></div>
        <div class="fixed inset-0 z-10 overflow-y-auto">
            <div id="addOverlay" class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
                <div class="relative transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:w-full sm:max-w-lg">
                    <div class="text-center pt-5 block font-semibold text-2xl self-start text-gray-700">
                        <h1 class="leading-relaxed">Add Client</h1>
                    </div>
                    <div class="hidden sm:block" aria-hidden="true">
                        <div class="py-5">
                            <div class="border-t border-gray-200"></div>
                        </div>
                    </div>
                    <form action="<%= request.getContextPath()%>/clientAdd" method="POST">
                        <div class="overflow-hidden sm:rounded-md">
                            <div class="px-4 py-5 sm:p-6">
                                <div class="grid grid-cols-6 gap-6">
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="code" class="block text-sm font-medium text-gray-700">Code</label>
                                        <input type="text" name="code" id="code"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Code" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="mobile"
                                               class="block text-sm font-medium text-gray-700">Mobile</label>
                                        <input type="tel" name="mobile" id="mobile"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Mobile" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="firstName" class="block text-sm font-medium text-gray-700">First
                                            name</label>
                                        <input type="text" name="firstName" id="firstName"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client FirstName" required>
                                    </div>

                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="lastName" class="block text-sm font-medium text-gray-700">Last
                                            name</label>
                                        <input type="text" name="lastName" id="lastName"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client LastName" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="birthDate" class="block text-sm font-medium text-gray-700">Birth
                                            Date</label>
                                        <input type="date" name="birthDate" id="birthDate"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client BirthDate" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="address"
                                               class="block text-sm font-medium text-gray-700">Address</label>
                                        <input type="text" name="address" id="address"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Address" required>
                                    </div>

                                </div>
                            </div>
                            <div class="hidden sm:block" aria-hidden="true">
                                <div class="py-5">
                                    <div class="border-t border-gray-200"></div>
                                </div>
                            </div>
                            <div class="px-4 pb-3 text-right sm:px-6">
                                <button type="button" id="closeAddForm"
                                        class="inline-flex justify-center rounded-md border border-transparent bg-red-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2">
                                    Cancel
                                </button>
                                <button type="submit"
                                        class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                                    Save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="deleteForm" class="hidden">
    <div class="relative z-10" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="fixed inset-0 bg-black bg-opacity-75 transition-opacity"></div>
        <div class="fixed inset-0 z-10 overflow-y-auto">
            <div id="deleteOverlay" class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
                <div class="relative transform overflow-hidden rounded-lg bg-white px-4 pt-5 pb-4 text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-lg sm:p-6">
                    <form action="<%= request.getContextPath()%>/clientDelete" method="post">
                        <div class="sm:flex sm:items-start">
                            <input type="hidden" id="deleteCode" name="code">
                            <div class="mx-auto flex h-12 w-12 flex-shrink-0 items-center justify-center rounded-full bg-red-100 sm:mx-0 sm:h-10 sm:w-10">
                                <!-- Heroicon name: outline/exclamation-triangle -->
                                <svg class="h-6 w-6 text-red-600" xmlns="http://www.w3.org/2000/svg" fill="none"
                                     viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true">
                                    <path stroke-linecap="round" stroke-linejoin="round"
                                          d="M12 9v3.75m-9.303 3.376c-.866 1.5.217 3.374 1.948 3.374h14.71c1.73 0 2.813-1.874 1.948-3.374L13.949 3.378c-.866-1.5-3.032-1.5-3.898 0L2.697 16.126zM12 15.75h.007v.008H12v-.008z"/>
                                </svg>
                            </div>
                            <div class="mt-3 text-center sm:mt-0 sm:ml-4 sm:text-left">
                                <h3 class="text-lg font-medium leading-6 text-gray-900" id="modal-title">Delete
                                    Client</h3>
                                <div class="mt-2">
                                    <p class="text-sm text-gray-500">Are you sure you want to Delete This Client? All of
                                        your data will be permanently removed from our servers forever. This action
                                        cannot be undone.</p>
                                </div>
                            </div>
                        </div>
                        <div class="mt-5 sm:mt-4 sm:flex sm:flex-row-reverse">
                            <button type="submit"
                                    class="inline-flex w-full justify-center rounded-md border border-transparent bg-red-600 px-4 py-2 text-base font-medium text-white shadow-sm hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2 sm:ml-3 sm:w-auto sm:text-sm">
                                Delete
                            </button>
                            <button id="closeDeleteForm" type="button"
                                    class="mt-3 inline-flex w-full justify-center rounded-md border border-gray-300 bg-white px-4 py-2 text-base font-medium text-gray-700 shadow-sm hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:mt-0 sm:w-auto sm:text-sm">
                                Cancel
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>
<div id="updateForm" class="hidden">
    <div class="relative z-10" aria-labelledby="modal-title" role="dialog" aria-modal="true">
        <div class="fixed inset-0 bg-black bg-opacity-75 transition-opacity"></div>
        <div class="fixed inset-0 z-10 overflow-y-auto">
            <div id="updateOverlay" class="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
                <div class="relative transform overflow-hidden rounded-lg bg-white text-left shadow-xl transition-all sm:w-full sm:max-w-lg">
                    <div class="text-center pt-5 block font-semibold text-2xl self-start text-gray-700">
                        <h1 class="leading-relaxed">Update Client</h1>
                    </div>
                    <div class="hidden sm:block" aria-hidden="true">
                        <div class="py-5">
                            <div class="border-t border-gray-200"></div>
                        </div>
                    </div>
                    <form action="<%= request.getContextPath()%>/clientUpdate" method="POST">
                        <div class="overflow-hidden sm:rounded-md">
                            <div class="px-4 py-5 sm:p-6">
                                <div class="grid grid-cols-6 gap-6">
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateCode" class="block text-sm font-medium text-gray-700">Code</label>
                                        <input type="text" name="code" id="updateCode"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Code" readonly>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateMobile"
                                               class="block text-sm font-medium text-gray-700">Mobile</label>
                                        <input type="tel" name="mobile" id="updateMobile"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Mobile" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateFirstName" class="block text-sm font-medium text-gray-700">First
                                            name</label>
                                        <input type="text" name="firstName" id="updateFirstName"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client FirstName" required>
                                    </div>

                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateLastName" class="block text-sm font-medium text-gray-700">Last
                                            name</label>
                                        <input type="text" name="lastName" id="updateLastName"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client LastName" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateBirthDate" class="block text-sm font-medium text-gray-700">Birth
                                            Date</label>
                                        <input type="date" name="birthDate" id="updateBirthDate"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client BirthDate" required>
                                    </div>
                                    <div class="p-4 col-span-6 sm:col-span-3">
                                        <label for="updateAddress"
                                               class="block text-sm font-medium text-gray-700">Address</label>
                                        <input type="text" name="address" id="updateAddress"
                                               class="px-4 py-2 border focus:ring-gray-500 focus:border-gray-900 w-full sm:text-sm border-gray-300 rounded-md focus:outline-none text-gray-600"
                                               placeholder="Client Address" required>
                                    </div>

                                </div>
                            </div>
                            <div class="hidden sm:block" aria-hidden="true">
                                <div class="py-5">
                                    <div class="border-t border-gray-200"></div>
                                </div>
                            </div>
                            <div class="px-4 pb-3 text-right sm:px-6">
                                <button type="button" id="closeUpdateForm"
                                        class="inline-flex justify-center rounded-md border border-transparent bg-red-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-red-500 focus:ring-offset-2">
                                    Cancel
                                </button>
                                <button type="submit"
                                        class="inline-flex justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2">
                                    Save
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="<%= request.getContextPath()%>/Views/js/script.js"></script>
</body>
</html>
