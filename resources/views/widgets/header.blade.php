<!DOCTYPE html>
<html lang="{{ config('app.locale') }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
    <link href="{{ asset('plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- <link href="{{ asset('plugins/bootstrap/css/bootstrap-theme.min.css') }}" rel="stylesheet"> -->
    <link href="{{ asset('css/socio.css') }}" rel="stylesheet">
</head>

<!-- Navbar -->
<header>
    <nav>
        <ul>
            <li><a href = "#">Trending</a></li>
            <li><a href = "#">Photos</a></li>
            <li><a href = "#">Gifs</a></li>
            <li><a href = "#">Music</a></li>
            <li><a href = "#">News</a></li>
        </ul>

    </nav>
</header>
