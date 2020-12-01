@extends('layouts.template')
@section('styles')
    <link rel="stylesheet" href="{{ asset('css/mk/list.css') }}">
@endsection

@section('content')
{{--    {{dump($images)}}--}}
    <section id="gray" class="py-5">
        <div class="container" id="mk-list">
            <div class="row">
                @foreach($images as $img)

                    <div class="col-4 pb-4">
                        <div class="wrapper text-center pb-3">
                            <div class="title">"Корпоратив"</div>
                            <div class="date">29 ноя. (воскресенье) в 12:00</div>
                            <div class="placeholder">
                                <img class="img-fluid" src="img/thumb/{{$img->getFilename()}}"/>
                            </div>
                            <div class="teacher">Александра Зиннурова</div>
                            <div class="full-price">Стоимость 2400₽</div>
                            <div class="price">При оплате заранее 2000₽</div>
                            <div class="places pb-2">Осталось 2 места</div>
                            <a class="btn btn-danger btn-lg" href="#" role="button">ЗАПИСАТЬСЯ</a>
                            <div class="rules pt-2">Условия записи на мастер-класс</div>
                        </div>
                    </div>

                @endforeach
            </div>
        </div>
    </section>
@endsection
