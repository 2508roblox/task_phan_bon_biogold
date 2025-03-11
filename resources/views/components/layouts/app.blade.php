<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        @font-face {
            font-family: 'FLIcons';
            src:  
                url('/assets/fl-icons.woff') format('woff'),
                url('/assets/fl-icons.ttf') format('truetype');
            font-weight: normal;
            font-style: normal;
        }
    </style>
    @livewireStyles <!-- Thêm dòng này để load styles cho Livewire -->
</head>
<body>

    @livewire('header') <!-- Nhúng component header ở đây -->
    
    {{ $slot }} <!-- Nội dung chính của trang -->
    @livewire('footer') <!-- Nhúng component footer ở đây -->

    @livewireScripts <!-- Thêm dòng này để load scripts cho Livewire -->
</body>
</html>