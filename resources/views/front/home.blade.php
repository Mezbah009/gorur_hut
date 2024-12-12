@extends('front.layouts.app')
@section('content')
    <section class="section-1">
        <div id="carouselExampleIndicators" class="carousel slide carousel-fade" data-bs-ride="carousel" data-bs-interval="false">
            <div class="carousel-inner">
                @if ($slider->isNotEmpty())
                    @foreach ($slider as $key => $sliders)
                    <div class="carousel-item {{ $key == 0 ? 'active' : '' }}">
                        <picture>
                        <source media="(max-width: 1365px)" srcset="{{ asset('uploads/slider/'.$sliders->image) }}" />
                        <source media="(min-width: 1365px)" srcset="{{ asset('uploads/slider/'.$sliders->image) }}" />
                        <img src="{{ asset('uploads/slider/'.$sliders->image) }}" alt="" class="img-fluid">
                        </picture>
                        <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                            <div class="p-3">
                                <p class="text-success">{{$sliders->description}}</p>
                                <h1 class="display-4 text-black mb-3">{{$sliders->title}}</h1>

                                <a class="btn btn-success  fw-bolder" href="{{$sliders->link}}"  > {{$sliders->button_name}}</a>
                            </div>
                        </div>
                    </div>
                    @endforeach
                @endif
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </section>

    <section class="section-2">
    {{-- <div class="ps-site-features">
		<div class="ps-container">
			<div class="ps-block--site-features">
				<div class="ps-block__item">
					<div class="ps-block__left">
			        <img src="{{asset('front-assets/images/fast-delivery.png')}}" alt="Icon Alt Text" class="icon-shipping">
					</div>
					<div class="ps-block__right">
						<h4>Fast Shipping</h4>
						<p>
                            For minimum order GBP 999£
						</p>
					</div>
				</div>
				<div class="ps-block__item">
					<div class="ps-block__left">
                        <img src="{{asset('front-assets/images/plug.png')}}" alt="Icon Alt Text" class="icon-size">
					</div>
					<div class="ps-block__right">
						<h4>Global Tech</h4>
						<p>
                       Premium electronic products
						</p>
					</div>
				</div>
				<div class="ps-block__item">
					<div class="ps-block__left">
                    <img src="{{asset('front-assets/images/money.png')}}" alt="Icon Alt Text" class="icon-size">
					</div>
					<div class="ps-block__right">
						<h4>Secure payment</h4>
						<p>
                        100% secure payment
						</p>
					</div>
				</div>
				<div class="ps-block__item">
					<div class="ps-block__left">
                    <img src="{{asset('front-assets/images/24-hours-support.png')}}" alt="Icon Alt Text" class="icon-size">
					</div>
					<div class="ps-block__right">
						<h4>Endless support</h4>
						<p>
                        Exclusive support dedicated to you
						</p>
					</div>
				</div>
				<div class="ps-block__item">
					<div class="ps-block__left">
                    <img src="{{asset('front-assets/images/gift.png')}}" alt="Icon Alt Text" class="icon-gift">
					</div>
					<div class="ps-block__right">
						<h4>Gift Vouchers</h4>
						<p>
                        Celebrate in style without breaking the bank!
						</p>
					</div>
				</div>
			</div>
		</div>
	</div> --}}
</section>


 <!-- About Start -->
 <div class="container-xxl py-5">
    <div class="container">
        <div class="row g-5 align-items-end">
            <div class="col-lg-6">
                <div class="row g-2">
                    <div class="col-6 position-relative wow fadeIn" data-wow-delay="0.7s">
                        <div class="about-experience bg-secondary rounded">
                            <h1 class="display-1 mb-0">5</h1>
                            <small class="fs-5 fw-bold">Years Experience</small>
                        </div>
                    </div>
                    <div class="col-6 wow fadeIn" data-wow-delay="0.1s">
                        <img class="img-fluid rounded" src="{{asset('front-assets-new/img/service-1.jpg')}}">
                    </div>
                    <div class="col-6 wow fadeIn" data-wow-delay="0.3s">
                        <img class="img-fluid rounded" src="{{asset('front-assets-new/img/service-2.jpg')}}">
                    </div>
                    <div class="col-6 wow fadeIn" data-wow-delay="0.5s">
                        <img class="img-fluid rounded" src="{{asset('front-assets-new/img/service-3.jpg')}}">
                    </div>
                </div>
            </div>
            <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                <p class="section-title bg-white text-start text-primary pe-3">About Us</p>
                <h1 class="mb-4">Know About Our Dairy Farm & Our History</h1>
                <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                <div class="row g-5 pt-2 mb-5">
                    <div class="col-sm-6">
                        <img class="img-fluid mb-4" src="img/service.png" alt="">
                        <h5 class="mb-3">Dedicated Services</h5>
                        <span>Clita erat ipsum et lorem et sit, sed stet lorem sit clita</span>
                    </div>
                    <div class="col-sm-6">
                        <img class="img-fluid mb-4" src="img/product.png" alt="">
                        <h5 class="mb-3">Organic Products</h5>
                        <span>Clita erat ipsum et lorem et sit, sed stet lorem sit clita</span>
                    </div>
                </div>
                <a class="btn btn-secondary rounded-pill py-3 px-5" href="">Explore More</a>
            </div>
        </div>
    </div>
</div>
<!-- About End -->

{{-- <section class="section-4 pt-50">
    <div class="ps-container">
        <div class="section-title">
            <h2>Breed</h2>
        </div>
        <div class="ps-block__item">
        <div class="row-cat pb-3">
            @if (!getCategories()->isEmpty())
            @foreach (getCategories() as $category)

                    <div class="cat-cardCategory">
                        <div class="upper-container">
                        <a href="{{route('front.shop', $category->slug)}}" }}">
                            @if ($category->image !== "")
                            <img src="{{ asset('uploads/category/thumb/'.$category->image) }}" alt="" class="img-fluid">
                        @endif
                        </div>
                        <div class="lower-container">

                            <h2>{{ $category->name }}</h2>
                            </a>
                        </div>
                    </div>


            @endforeach
        @endif
        </div>
        </div>
    </div>
</section> --}}

<section class="section-4 pt-5">
    <div class="ps-container">
        <div class="section-title">
            <h2>Deshi Cow</h2>
        </div>
        <div class="row pb-3">

            @if ($featuredProducts->isNotEmpty())
            @foreach ($featuredProducts as $featuredProduct)
                @php
                $productImage = $featuredProduct->product_images->first();
                @endphp
                <div class="col-md-3">
                    <div class="card product-card">
                        <div class="product-image position-relative">
                            <a href="{{ route("front.product", $featuredProduct->slug) }}" class="product-img"> <!-- Use $featuredProduct here -->
                                @if (!empty($productImage->image))
                                    <img class="card-img-top" src="{{ asset('uploads/product/small/' . $productImage->image) }}" class="img-thumbnail" alt="{{ $featuredProduct->title }}" height="150px" width="150px">
                                @else
                                    <img src="{{ asset('admin-assets/img/default-150x150.png') }}" alt="default image" height="150px" width="150px">
                                @endif
                            </a>
                            @if($featuredProduct->product_items != null && $featuredProduct->product_items->isNotEmpty())
                                @php
                                    $item = $featuredProduct->product_items->first();
                                @endphp
                                <a onclick="addToItemWishlist({{ $item->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>
                            @else
                                <a onclick="addToWishlist({{ $featuredProduct->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>
                            @endif
                            <div class="product-action">
                                @if($featuredProduct->track_qty == 'Yes')
                                @if ($featuredProduct->qty > 0)
                                    @if($featuredProduct->product_items != null && $featuredProduct->product_items->isNotEmpty())
                                        @php
                                            $item = $featuredProduct->product_items->first();
                                        @endphp
                                        @if($item->qty > 0)
                                            <a href="javascript:void(0)" onclick="addItemToCart({{$item->id}})" class="btn btn-dark">
                                                <i class="fas fa-shopping-cart"></i> Add To Cart
                                            </a>
                                            @else
                                                <a class="btn btn-dark" href="{{ route("front.product", $featuredProduct->slug) }}" >
                                                    Add To Cart
                                                </a>
                                        @endif
                                    @else
                                        <a href="javascript:void(0)" onclick="addToCart({{$featuredProduct->id}})" class="btn btn-dark">
                                            <i class="fas fa-shopping-cart"></i> Add To Cart
                                        </a>
                                    @endif
                                @else
                                <a class="btn btn-dark" href="javascript:void(0)" >
                                    Out Of Stock
                                </a>
                                @endif
                                @else
                                    @if($featuredProduct->product_items != null && $featuredProduct->product_items->isNotEmpty())
                                        @php
                                            $item = $featuredProduct->product_items->first();
                                        @endphp
                                        <a href="javascript:void(0)" onclick="addItemToCart({{$item->id}})" class="btn btn-dark">
                                            <i class="fas fa-shopping-cart"></i> Add To Cart
                                        </a>
                                    @else
                                        <a href="javascript:void(0)" onclick="addToCart({{$featuredProduct->id}})" class="btn btn-dark">
                                            <i class="fas fa-shopping-cart"></i> Add To Cart
                                        </a>
                                    @endif
                                @endif

                            </div>
                        </div>
                        <div class="card-body text-center mt-3">
                            <a class="h6 link" href="{{ route("front.product", $featuredProduct->slug) }}">{{ $featuredProduct->title }}</a>
                            <div class="price mt-2">
                                @if($featuredProduct->product_items != null && $featuredProduct->product_items->isNotEmpty())
                                    @php
                                        $item = $featuredProduct->product_items->first();
                                    @endphp
                                    <span class="h5"><strong>৳{{ $item->price }}</strong></span>
                                    @if ($item->compare_price > 0)
                                        <span class="h6 text-underline"><del>£{{ $item->compare_price }}</del></span>
                                    @endif
                                @else
                                    <span class="h5"><strong>৳{{ $featuredProduct->price }}</strong></span>
                                    @if ($featuredProduct->compare_price > 0)
                                        <span class="h6 text-underline"><del>£{{ $featuredProduct->compare_price }}</del></span>
                                    @endif
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif

        </div>
    </div>
</section>

<section class="section-2">
    <div class="ps-site-features">
        <div class="ps-container">
            <img src="{{asset('front-assets/images/banner.jpg')}}" alt="Icon Alt Text" >
        </div>
    </div>
</section>


{{-- <section>
        <!-- Banner Start -->
        <div class="container-fluid banner my-5 py-5" data-parallax="scroll" data-image-src="{{asset('front-assets-new/img/banner.jpg')}}">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.3s">
                        <div class="row g-4 align-items-center">
                            <div class="col-sm-4">
                                <img class="img-fluid rounded" src="{{asset('front-assets-new/img/banner-1.jpg')}}" alt="">
                            </div>
                            <div class="col-sm-8">
                                <h2 class="text-white mb-3">We Sell Best Dairy Products</h2>
                                <p class="text-white mb-4">Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                                <a class="btn btn-secondary rounded-pill py-2 px-4" href="">Read More</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <div class="row g-4 align-items-center">
                            <div class="col-sm-4">
                                <img class="img-fluid rounded" src="{{asset('front-assets-new/img/banner-2.jpg')}}" alt="">
                            </div>
                            <div class="col-sm-8">
                                <h2 class="text-white mb-3">We Deliver Fresh Mild Worldwide</h2>
                                <p class="text-white mb-4">Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                                <a class="btn btn-secondary rounded-pill py-2 px-4" href="">Read More</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner End -->
</section> --}}

<section class="section-4 pt-5">
    <div class="ps-container">
        <div class="section-title">
            <h2>New Cow</h2>
        </div>
        <div class="row pb-3">
            @if ($latestProducts->isNotEmpty())
            @foreach ($latestProducts as $latestProducts)
                {{-- @foreach ($products as $product) --}}
                    @php
                    $productImage = $latestProducts->product_images->first();
                    @endphp
                    <div class="col-md-3">
                        <div class="card product-card">
                            <div class="product-image position-relative">
                                <a href="{{ route("front.product", $latestProducts->slug) }}" class="product-img">

                                    @if (!empty($productImage->image))
                                        <img class="card-img-top" src="{{ asset('uploads/product/small/' . $productImage->image) }}" class="img-thumbnail" alt="{{ $latestProducts->title }}" height="150px" width="150px" />
                                    @else
                                        <img src="{{ asset('admin-assets/img/default.png') }}"  alt="default image" height="150px" width="150px" />
                                    @endif

                                </a>
                                @if($latestProducts->product_items != null && $latestProducts->product_items->isNotEmpty())
                                    @php
                                        $item = $latestProducts->product_items->first();
                                    @endphp
                                    <a onclick="addToItemWishlist({{ $item->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>
                                @else
                                    <a onclick="addToWishlist({{ $latestProducts->id }})" class="whishlist" href="javascript:void(0);"><i class="far fa-heart"></i></a>
                                @endif
                                <div class="product-action">
                                    @if($latestProducts->track_qty == 'Yes')
                                        @if ($latestProducts->qty > 0)
                                            @if($latestProducts->product_items != null && $latestProducts->product_items->isNotEmpty())
                                                @php
                                                    $item = $latestProducts->product_items->first();
                                                @endphp
                                                @if($item->qty > 0)
                                                    <a href="javascript:void(0)" onclick="addItemToCart({{$item->id}})" class="btn btn-dark">
                                                        <i class="fas fa-shopping-cart"></i> Add To Cart
                                                    </a>
                                                @else
                                                    <a class="btn btn-dark" href="{{ route("front.product", $latestProducts->slug) }}" >
                                                        Add To Cart
                                                    </a>
                                                @endif
                                            @else
                                                <a href="javascript:void(0)" onclick="addToCart({{$latestProducts->id}})" class="btn btn-dark">
                                                    <i class="fas fa-shopping-cart"></i> Add To Cart
                                                </a>
                                            @endif
                                        @else
                                            <a class="btn btn-dark" href="javascript:void(0)" >
                                                Out Of Stock
                                            </a>
                                        @endif
                                    @else
                                        @if($latestProducts->product_items != null && $latestProducts->product_items->isNotEmpty())
                                            @php
                                                $item = $latestProducts->product_items->first();
                                            @endphp
                                            <a href="javascript:void(0)" onclick="addItemToCart({{$item->id}})" class="btn btn-dark">
                                                <i class="fas fa-shopping-cart"></i> Add To Cart
                                            </a>
                                        @else
                                            <a href="javascript:void(0)" onclick="addToCart({{$latestProducts->id}})" class="btn btn-dark">
                                                <i class="fas fa-shopping-cart"></i> Add To Cart
                                            </a>
                                        @endif
                                    @endif
                                </div>
                            </div>
                            <div class="card-body text-center mt-3">
                                <a class="h6 link" href="{{ route("front.product", $latestProducts->slug) }}">{{ $latestProducts->title }}</a>
                                <div class="price mt-2">
                                    @if($latestProducts->product_items != null && $latestProducts->product_items->isNotEmpty())
                                        @php
                                            $item = $latestProducts->product_items->first();
                                        @endphp
                                        <span class="h5"><strong>৳{{ $item->price }}</strong></span>
                                        @if ($item->compare_price > 0)
                                            <span class="h6 text-underline"><del>£{{ $item->compare_price }}</del></span>
                                        @endif
                                    @else
                                        <span class="h5"><strong>৳{{ $latestProducts->price }}</strong></span>
                                        @if ($latestProducts->compare_price > 0)
                                            <span class="h6 text-underline"><del>£{{ $latestProducts->compare_price }}</del></span>
                                        @endif
                                    @endif

                                </div>
                            </div>
                        </div>
                    </div>

                {{-- @endforeach --}}
            @endforeach
        @endif

        </div>
    </div>
</section>

<section>

    <!-- Gallery Start -->
    <div class="container-xxl py-5 px-0">
        <div class="row g-0">
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="row g-0">
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-5.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-5.jpg')}}" alt="">
                        </a>
                    </div>
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-1.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-1.jpg')}}" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                <div class="row g-0">
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-2.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-2.jpg')}}" alt="">
                        </a>
                    </div>
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-6.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-6.jpg')}}" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                <div class="row g-0">
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-7.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-7.jpg')}}" alt="">
                        </a>
                    </div>
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-3.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-3.jpg')}}" alt="">
                        </a>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                <div class="row g-0">
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-4.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-4.jpg')}}" alt="">
                        </a>
                    </div>
                    <div class="col-12">
                        <a class="d-block" href="{{asset('front-assets-new/img/gallery-8.jpg')}}" data-lightbox="gallery">
                            <img class="img-fluid" src="{{asset('front-assets-new/img/gallery-8.jpg')}}" alt="">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Gallery End -->
</section>
@endsection
