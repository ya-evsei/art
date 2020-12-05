<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Upload Multiple Files</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" />


    <style>
        .invalid-feedback {
            display: block;
        }
    </style>
</head>
<body>

<div class="container mt-4">
    <h2>Upload Multiple Files</h2>
    @if(session()->has('success'))
        <div class="alert alert-success">
            {{ session()->get('success') }}
        </div>
    @endif

    <form method="post" action="{{ route('images.store') }}" enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <input type="file" name="images[]" multiple class="form-control" accept="image/*">
            @if ($errors->has('files'))
                @foreach ($errors->get('files') as $error)
                    <span class="invalid-feedback" role="alert">
                <strong>{{ $error }}</strong>
            </span>
                @endforeach
            @endif
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-success">Save</button>
        </div>
    </form>
</div>
</body>
</html>
