<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Category;
use App\Models\TempImage;
use Illuminate\Support\Facades\File;
use Image;
class CategoryController extends Controller
{
/**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $categories = Category::latest();
        if(!empty($request->get('keyword'))){
               $categories =
               $categories->where('name','like','%'.$request->get('keyword').'%');
        }
        $categories = $categories->latest()->paginate(10);
        return view('admin.category.list',compact('categories'));
      }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.category.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'slug' => 'required|unique:categories',

    ]);
     if($validator->passes()){
        $category=new Category();
        $category->name=$request->name;
        $category->slug=$request->slug;
        $category->status=$request->status;
        $category->showHome=$request->showHome;
        $category->order=$request->order;
        $category->save();

        //save imae here
        if(!empty($request->image_id))
        {
            $tempImage = TempImage::find($request-> image_id);

            $extArray = explode('.',$tempImage->name);
            $ext = last($extArray);
            $newImageName= $category->id.'.'.$ext;
            $sPath =public_path().'/temp/'.$tempImage->name;
            $dPath =public_path().'/uploads/category/'.$newImageName;
            File::copy($sPath,$dPath);

            // Geenerate IMage Thumbnail
            $dPath =public_path().'/uploads/category/thumb/'.$newImageName;
            $img =Image:: make($sPath);
            // $img ->resize(450,600);
            $img->fit(450, 600, function ($constraint) {
                $constraint->upsize();
            });
            $img->save($dPath);


            $category->image=$newImageName;
            $category->save();

        }
        $request->session()->flash('success','Category added successfully');
        return response()->json([
            'status'=>true,
            'messege'=>'Category added successfully'
        ]);

     }
     else{
        return response()->json([
            'status'=>false,
            'errors'=>$validator->errors()
        ]);
     }
}

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($categoryId,Request $request)
    {
        $category= Category::find($categoryId);
        if(empty($category)){
            return redirect()->route('categories.index');
        }
        return view('admin.category.edit',compact('category'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update($categoryId,Request $request)
    {
        $category= Category::find($categoryId);
        if(empty($category)){
            return response()->json([
                'status' => false,
                'notFound'=> true,
                'message' => 'Category not found'
            ]);
        }

        $validator = Validator::make($request->all(),[
            'name' => 'required',
            'slug' => 'required|unique:categories,slug,'.$category->id.',id',

    ]);
     if($validator->passes()){
        $category->name=$request->name;
        $category->slug=$request->slug;
        $category->status=$request->status;
        $category->showHome=$request->showHome;
        $category->order=$request->order;
        $category->save();
        $oldImage = $category->image;
        //save imae here
        if(!empty($request->image_id))
        {
            $tempImage = TempImage::find($request-> image_id);

            $extArray = explode('.',$tempImage->name);
            $ext = last($extArray);
            $newImageName= $category->id.'-'.time().'.'.$ext;
            $sPath =public_path().'/temp/'.$tempImage->name;
            $dPath =public_path().'/uploads/category/'.$newImageName;
            File::copy($sPath,$dPath);

            // Geenerate IMage Thumbnail
            $dPath =public_path().'/uploads/category/thumb/'.$newImageName;
            $img =Image:: make($sPath);
            // $img ->resize(450,600);
            $img->fit(450, 600, function ($constraint) {
                $constraint->upsize();
            });
            $img->save($dPath);


            $category->image=$newImageName;
            $category->save();
            //delete old images
            File::delete(public_path().'/uploads/category/thumb/'.$oldImage);
            File::delete(public_path().'/uploads/category/'.$oldImage);


        }
        $request->session()->flash('success','Category added successfully');
        return response()->json([
            'status'=>true,
            'messege'=>'Category added successfully'
        ]);

     }
     else{
        return response()->json([
            'status'=>false,
            'errors'=>$validator->errors()
        ]);
     }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($categoryId,Request $request)
    {
        $category= Category::find($categoryId);
        if(empty($category)){

        $request->session()->flash('Error','Category not Found');
        return response()->json([
            'status'=>true,
            'message' =>'Category not Found'
        ]);
        }
        File::delete(public_path().'/uploads/category/thumb/'.$category->image);
        File::delete(public_path().'/uploads/category/'.$category->image);
        $category->delete();

        $request->session()->flash('success','Category deleted successfully');
        return response()->json([
            'status'=>true,
            'message' =>'Category deleted successfully'
        ]);

    }}