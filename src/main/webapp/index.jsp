<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body class="flex flex-col min-h-screen">
<jsp:include page="Views/Includes/navbar.jsp"></jsp:include>
<div class="bg-white">
    <main>
        <div class="overflow-hidden pt-8 sm:pt-12 lg:relative lg:py-48">
            <div class="mx-auto max-w-md px-6 sm:max-w-3xl lg:grid lg:max-w-7xl lg:grid-cols-2 lg:gap-24 lg:px-8">
                <div>
                    <div class="mt-20">
                        <div class="mt-6 sm:max-w-xl">
                            <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl">2M - MOUSTA -
                                MAROUANE</h1>
                            <p class="mt-6 text-xl text-gray-500">Anim aute id magna aliqua ad ad non deserunt sunt. Qui
                                irure qui lorem cupidatat commodo.</p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sm:mx-auto sm:max-w-3xl sm:px-6">
                <div class="py-12 sm:relative sm:mt-12 sm:py-16 lg:absolute lg:inset-y-0 lg:right-0 lg:w-1/2">
                    <div class="hidden sm:block">
                        <div class="absolute inset-y-0 left-1/2 w-screen rounded-l-3xl bg-gray-50 lg:left-80 lg:right-0 lg:w-full"></div>
                        <svg class="absolute top-8 right-1/2 -mr-3 lg:left-0 lg:m-0" width="404" height="392"
                             fill="none" viewBox="0 0 404 392">
                            <defs>
                                <pattern id="837c3e70-6c3a-44e6-8854-cc48c737b659" x="0" y="0" width="20" height="20"
                                         patternUnits="userSpaceOnUse">
                                    <rect x="0" y="0" width="4" height="4" class="text-gray-200" fill="currentColor"/>
                                </pattern>
                            </defs>
                            <rect width="404" height="392" fill="url(#837c3e70-6c3a-44e6-8854-cc48c737b659)"/>
                        </svg>
                    </div>
                    <div class="relative -mr-40 pl-6 sm:mx-auto sm:max-w-3xl sm:px-0 lg:h-full lg:max-w-none lg:pl-12">
                        <img class="w-full rounded-md shadow-xl ring-1 ring-black ring-opacity-5 lg:h-full lg:w-auto lg:max-w-none"
                             src="https://media.discordapp.net/attachments/1161000798650630235/1166150528594616320/Untitled_design_4.png?ex=65497150&is=6536fc50&hm=a655e5762816ca582134d02ca91fef61bf057f6ff9729763db5162ba0c7f1355&=&width=670&height=670" alt="">
                    </div>
                </div>
            </div>
        </div>
    </main>
</div>
<jsp:include page="Views/Includes/footer.jsp"></jsp:include>
</body>
</html>