@extends('admin.layouts.app')
@section('content')
    <section class="content-header">
        <div class="container-fluid my-2">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Update Cow</h1>
                </div>
                <div class="col-sm-6 text-right">
                    <a href="{{route('products.index')}}" class="btn btn-primary">Back</a>
                </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <form action="" method="put" name="productForm" id="productForm">

            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-8">
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="title">Title</label>
                                            <input type="text" name="title" value="{{$product->title}}" id="title" class="form-control" placeholder="Title">
                                            <p class="error"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="slug">Slug</label>
                                            <input type="text" name="slug" value="{{$product->slug}}" id="slug" class="form-control" placeholder="Slug" readonly>
                                            <p class="error"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="description">Short Description</label>
                                            <textarea name="short_description" id="short_description" cols="30" rows="10" class="summernote" placeholder="short_description">{{$product->short_description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="description">Description</label>
                                            <textarea name="description" id="description" cols="30" rows="10" class="summernote" placeholder="Description">{{$product->description}}</textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="description">Shipping and Returns</label>
                                            <textarea name="shipping_returns" id="shipping_returns" cols="30" rows="10" class="summernote" placeholder="shipping_returns">{{$product->shipping_returns}}</textarea>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Media</h2>
                                <div id="image" class="dropzone dz-clickable">
                                    <div class="dz-message needsclick">
                                        <br>Drop files here or click to upload.<br><br>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="product-gallery">
                            @if($productImages->isNotEmpty())
                                @foreach($productImages as $image)
                                    <div class="col-md-3" id="image-row-{{ $image->id }}">
                                        <input type="hidden" name="image_array[]" value="{{ $image->id }}">
                                        <div class="card">
                                            <img src="{{ asset('uploads/product/small/' .$image->image) }}" class="card-img-top" alt="">
                                            <div>
                                                <a href="javascript:void(0)" onclick="deleteImage({{ $image->id }})" class="btn btn-danger">Delete</a>
                                            </div>
                                        </div>
                                    </div>
                                @endforeach
                            @endif
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Pricing</h2>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="price">Price</label>
                                            <input type="text" value="{{$product->price}}" name="price" id="price" class="form-control" placeholder="Price">
                                            <p class="error"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <label for="compare_price">Compare at Price</label>
                                            <input type="text" name="compare_price" value="{{$product->compare_price}}" id="compare_price" class="form-control" placeholder="Compare Price">
                                            <p class="text-muted mt-3">
                                                To show a reduced price, move the product’s original price into Compare at price. Enter a lower value into Price.
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Inventory</h2>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="sku">SKU (Stock Keeping Unit)</label>
                                            <input type="text" name="sku" value="{{$product->sku}}" id="sku" class="form-control" placeholder="sku">
                                            <p class="error"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="barcode">Barcode</label>
                                            <input type="text" name="barcode" value="{{$product->barcode}}" id="barcode" class="form-control" placeholder="Barcode">
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                            <div class="custom-control custom-checkbox">
                                                <input type="hidden" name="track_qty" value="No">
                                                <input class="custom-control-input" type="checkbox" id="track_qty" name="track_qty" value="Yes" {{($product->track_qty == 'Yes')? 'checked' : ''}}>
                                                <label for="track_qty" class="custom-control-label">Track Quantity</label>
                                                <p class="error"></p>
                                            </div>
                                        </div>
                                        <div class="mb-3">
                                            <input type="number" min="0" value="{{$product->qty}}" name="qty" id="qty" class="form-control" placeholder="Qty">
                                            <p class="error"></p>
                                        </div>
                                        <div class="mb-3">
                                            <label for="track_qty">Weight(g)</label>
                                            <input type="double" min="0" name="weight" id="weight" class="form-control" placeholder="weight"  value="{{$product->weight}}">
                                            <p class="error"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Related Cow</h2>
                                <div class="mb-3">

                                    <select multiple class="related-product w-100" name="related_products[]" id="related_products"></select>
                                    @if (! empty($relatedProducts))
                                    @foreach ( $relatedProducts as $relProduct )

                                    <option selected value="{{ $relProduct->id }}">{{ $relProduct->title }}</option>

                                    @endforeach

                                    @endif
                                    <p class="error"></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Cow status</h2>
                                <div class="mb-3">
                                    <select name="status" id="status" class="form-control">
                                        <option {{($product->status == '1')? 'selected' : ''}} value="1">Active</option>
                                        <option {{($product->status == '0')? 'selected' : ''}} value="0">Block</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h2 class="h4  mb-3">Cow Breed</h2>
                                <div class="mb-3">
                                    <label for="category">Breed</label>
                                    <select name="category" id="category" class="form-control">
                                        <option value="">Select a Breed</option>
                                        @if($categories->isNotEmpty())
                                            @foreach($categories as $category)
                                                <option {{($product->category_id == $category->id)? 'selected' : ''}} value="{{$category->id}}">{{$category->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="error"></p>
                                </div>
                                <div class="mb-3">
                                    <label for="category">Color</label>
                                    <select name="sub_category" id="sub_category" class="form-control">
                                        <option value="">Select a Color</option>
                                        @if($subCategories->isNotEmpty())
                                            @foreach($subCategories as $subCategory)
                                                <option {{($product->sub_category_id == $subCategory->id)? 'selected' : ''}} value="{{$subCategory->id}}">{{$subCategory->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="error"></p>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3"> Teeth</h2>
                                <div class="mb-3">
                                    <select name="brand" id="brand" class="form-control">
                                        <option value="">Select a Teeth</option>
                                        @if($brands->isNotEmpty())
                                            @foreach($brands as $brand)
                                                <option {{($product->brand_id == $brand->id)? 'selected' : ''}} value="{{$brand->id}}">{{$brand->name}}</option>
                                            @endforeach
                                        @endif
                                    </select>
                                    <p class="error"></p>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-3">
                            <div class="card-body">
                                <h2 class="h4 mb-3">Featured Cow</h2>
                                <div class="mb-3">
                                    <select name="is_featured" value="{{$product->is_featured}}" id="is_featured" class="form-control">
                                        <option {{($product->is_featured == 'No')? 'selected' : ''}} value="No">No</option>
                                        <option {{($product->is_featured == 'Yes')? 'selected' : ''}} value="Yes">Yes</option>
                                    </select>
                                    <p class="error"></p>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>

                <div class="pb-5 pt-3">
                    <button type="submit" class="btn btn-primary">Update</button>
                    <a href="{{route('products.index')}}" class="btn btn-outline-dark ml-3">Cancel</a>
                </div>
            </div>
            <!-- /.card -->
        </form>
    </section>

@endsection
@section('customJs')
    <script>
        $('.related-product').select2({
    ajax: {
        url: '{{ route("products.getProducts") }}',
        dataType: 'json',
        tags: true,
        multiple: true,
        minimumInputLength: 3,
        processResults: function (data) {
            return {
                results: data.tags
            };
        }
    }
});

// .select2-container--default .select2-selection--multiple .select2-selection__rendered li{
//     color:#000;
// }


// $array = [ 'tags' => [
//          [
//             "id" => 1,
//             "text" => 'mohit'
//         ] ,
//         [
//             "id" => 2,
//             "text" => 'ankit'
//         ],
//         [
//             "id" => 3,
//             "text" => 'rohit'
//         ]
//     ]
// ];


        $("#title").on("input", function () { // Use "input" event for real-time input tracking
            element = $(this);
            $("button[type=submit]").prop('disabled',true); // Use prop() to set the 'disabled' property

            $.ajax({
                url: '{{ route("getSlug") }}',
                type: 'get',
                data: { title: element.val() },
                dataType: 'json', // Use lowercase for 'json'
                success: function (response) {
                    $("button[type=submit]").prop('disabled', false); // Enable the button
                    if (response.status == true) { // Simplify if condition
                        $("#slug").val(response.slug); // Set the value of the 'slug' input
                    }
                }
            });
        });

        $("#productForm").submit(function (event) {
            event.preventDefault();
            var formArray = $(this).serializeArray();
            $("button[type=submit]").prop('disabled',true);
            // Add the CSRF token to the form data
            formArray.push({ name: "_token", value: "{{ csrf_token() }}" });

            $.ajax({
                url: '{{ route("products.update",$product->id) }}',
                type: 'put',
                data: formArray,
                dataType: 'json',
                success: function (response) {
                    $("button[type=submit]").prop('disabled',false);
                    if(response['status'] == true){
                        window.location.href="{{route('products.index')}}"
                    }
                    else{
                        var errors = response['errors'];
                        $(".error").removeClass('is-invalid').html(''); // Remove error classes and clear error messages
                        $("input[type='text'], select, input[type='number']").removeClass('is-invalid');
                        $.each(errors, function(key, value) {
                            $(`#${key}`).addClass('is-invalid'); // Add the 'is-invalid' class to the input
                            $(`#${key}`).next('p').addClass('invalid-feedback').html(value); // Add the error message
                        });
                    }
                },
                error: function () {
                    console.log("Something went wrong");
                    // Handle the error scenario, e.g., display an error message.
                }
            });
        });


        $("#category").change(function () {
            var category_id = $(this).val();
            $("button[type=submit]").prop('disabled',true);
            $.ajax({
                url: '{{ route("products-subCategories.index") }}', // Use double quotes for the route function
                type: 'POST', // Use uppercase 'POST'
                data: {
                    category_id: category_id,
                    _token: '{{ csrf_token() }}' // Include the CSRF token
                },
                dataType: 'json',
                success: function (response) {
                    $("button[type=submit]").prop('disabled',false);
                    // Clear existing options, except the first one
                    $("#sub_category option:not(:first)").remove();

                    // Use proper syntax to create option elements
                    $.each(response.subCategories, function (key, item) {
                        $("#sub_category").append($('<option>', {
                            value: item.id,
                            text: item.name
                        }));
                    });
                },
                error: function () {
                    console.log("Something went wrong"); // Correct the error message
                }
            });
        });

        Dropzone.autoDiscover = false;

        const dropzone = new Dropzone("#image", {
            url: "{{ route('product-images.update') }}",
            maxFiles: 10,
            paramName: 'image',
            params: { 'product_id': '{{$product->id}}' },
            addRemoveLinks: true,
            acceptedFiles: "image/jpeg,image/png,image/gif",
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
            success: function (file, response) {
            $("button[type=submit]").prop('disabled', false);
            var html = '<div class="col-md-3" id="image-row-' + response.image_id + '">' +
            '<input type="hidden" name="image_array[]" value="' + response.image_id + '">' +
            '<div class="card">' +
            '<img src="' + response.imagePath + '" class="card-img-top" alt="">' +
            '<div>' +
            '<a href="javascript:void(0)" onclick="deleteImage(' + response.image_id + ')" class="btn btn-danger">Delete</a>' +
            '</div>' +
            '</div>';
            $("#product-gallery").append(html);
        },
            complete: function (file) {
            this.removeFile(file);
        }
        });

        function deleteImage(id) {
            $("#image-row-" + id).remove();
            if(confirm('Are you sure  want to delete image?')){
                $.ajax({
                    url: "{{ route('product-images.destroy') }}",
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    },
                    type: 'delete',
                    data:{id:id},
                    success: function (response){
                        if(response.status == true){
                            alert(response.message);
                        }else{
                            alert(response.message);
                        }
                    }
                });
            }
        }






    </script>
@endsection
