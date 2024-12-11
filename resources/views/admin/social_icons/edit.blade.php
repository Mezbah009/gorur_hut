@extends('admin.layouts.app')
@section('content')

    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid my-2">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Edit social</h1>
                </div>
                <div class="col-sm-6 text-right">
                    <a href="{{ route('social.create') }}" class="btn btn-primary">Back</a>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="container-fluid">
            <form action="{{ route('social.store') }}" id="editSocialdForm" name="editSocialdForm" method="POST">
                @csrf
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="facebook">Facebook</label>
                                    <input type="text" name="facebook" id="facebook" class="form-control" placeholder="Facebook URL" value="{{ old('facebook', $social->facebook) }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="instagram">Instagram</label>
                                    <input type="text" name="instagram" id="instagram" class="form-control" placeholder="Instagram URL" value="{{ old('instagram', $social->instagram) }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="linkedIn">LinkedIn</label>
                                    <input type="text" name="linkedIn" id="linkedIn" class="form-control" placeholder="LinkedIn URL" value="{{ old('linkedIn', $social->linkedIn) }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="twitter">Twitter</label>
                                    <input type="text" name="twitter" id="twitter" class="form-control" placeholder="Twitter URL" value="{{ old('twitter', $social->twitter) }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="youtube">YouTube</label>
                                    <input type="text" name="youtube" id="youtube" class="form-control" placeholder="YouTube URL" value="{{ old('youtube', $social->youtube) }}">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="pinterest">Pinterest</label>
                                    <input type="text" name="pinterest" id="pinterest" class="form-control" placeholder="Pinterest URL" value="{{ old('pinterest', $social->pinterest) }}">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="pb-5 pt-3">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <a href="{{ route('social.index') }}" class="btn btn-outline-dark ml-3">Cancel</a>
                </div>
            </form>
        </div>
        <!-- /.card -->
    </section>
    <!-- /.content -->
@endsection

@section('customJs')


<script>
    $("#editSocialdForm").submit(function (event) {
        event.preventDefault();
        var formArray = $(this).serializeArray();

        // Add the CSRF token to the form data
        formArray.push({ name: "_token", value: "{{ csrf_token() }}" });

        $.ajax({
            url: '{{ route("social.update", $social->id) }}',
            type: 'put',
            data: formArray,
            dataType: 'json',
            success: function (response) {
                if (response["status"] == true) {
                    window.location.href="{{route('social.index')}}"

                    // Handle success
                } else {

                    if(response['notFound']== true) {
                        window.location.href= "{{ route('social.index') }}";
                    }



                    var errors = response['errors'];
                    $(".error").removeClass('is-invalid').html(''); // Remove error classes and clear error messages
                    $("input[type='text'], select").removeClass('is-invalid');
                    $.each(errors, function (key, value) {
                        $("#" + key).addClass('is-invalid');
                        $("#" + key).next('p').addClass('invalid-feedback').html(value);
                    });
                }
            },
            error: function (jqXHR, exception) {
                console.log("Something went wrong");
            }
        });
    });

</script>
@endsection
