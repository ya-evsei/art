@extends('layouts.template')
@section('styles')
    <link rel="stylesheet" href="{{ asset('css/mk/list.css') }}">
@endsection

@section('content')
    <section id="gray" class="py-5">
        <div class="container" id="mk-list">
            <div class="row">
                @for($x = 0; $x <= 29; $x++)
                    <div class="col-4 pb-4">
                        <div class="wrapper text-center pb-3">
                            <div class="title">"Корпоратив"</div>
                            <div class="date">29 ноя. (воскресенье) в 12:00</div>
                            <img class="img-fluid pt-2" src="http://placehold.it/400x300/b0b0b0"/>
                            <div class="teacher">Александра Зиннурова</div>
                            <div class="fprice">Стоимость 2400₽</div>
                            <div class="price">При оплате заранее 2000₽</div>
                            <div class="places pb-2">Осталось 2 места</div>
                            <a class="btn btn-danger btn-lg" href="#" role="button">ЗАПИСАТЬСЯ</a>
                            <div class="rules pt-2">Условия записи на мастер-класс</div>
                        </div>
                    </div>
                @endfor
            </div>
        </div>
    </section>
@endsection
