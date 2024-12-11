<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Social;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SocialIconController extends Controller
{
    public function index()
    {
        $social = Social::first();
        return view('admin.social_icons.index', compact('social'));
    }

    public function create(){
        return view ('admin.social_icons.create');
    }

    public function store(Request $request)
    {

        $validator = Validator::make($request->all(), [
           'linkedIn' => 'nullable|string',
            'facebook' => 'nullable|string',
            'youtube' => 'nullable|string',
            'twitter' => 'nullable|string',
            'instagram' => 'nullable|string',
            'pinterest' => 'nullable|string',
        ]);


        if ($validator->passes()) {

            $social=new Social();
            $social->linkedIn=$request->linkedIn;
            $social->facebook=$request->facebook;
            $social->youtube=$request->youtube;
            $social->twitter=$request->twitter;
            $social->instagram=$request->instagram;
            $social->pinterest=$request->pinterest;

            $social->save();
            $request->session()->flash('success','social added successfully');

            return response()->json([
                    'status' => true,
                    'message' => 'social created successfully',
            ]);

        } else {
            // Validation failed, return validation errors.
            return response()->json([
                'status' => false,
                'errors' => $validator->errors(),
            ]);
        }
    }


    public function edit($id, Request $request){
        $social =Social::find($id);

        if (empty($social)){
            $request->session()->flash('error','Record not found');
            return redirect()->route('social.index');
        }

        $data['social']=$social;
        return view('admin.social_icons.edit',$data);
    }


    public function update($id, Request $request){

        $social =Social::find($id);
        if (empty($social)){
            $request->session()->flash('error','Record not found');
            return response()->json([
                'status'=> false,
                'notFound'=> true
            ]);

        }

        $validator = Validator::make($request->all(), [
            'linkedIn' => 'nullable|string',
            'facebook' => 'nullable|string',
            'youtube' => 'nullable|string',
            'twitter' => 'nullable|string',
            'instagram' => 'nullable|string',
            'pinterest' => 'nullable|string',
        ]);

        if ($validator->passes()) {

            $social =Social::find($id);
            $social->linkedIn=$request->linkedIn;
            $social->facebook=$request->facebook;
            $social->youtube=$request->youtube;
            $social->twitter=$request->twitter;
            $social->instagram=$request->instagram;
            $social->pinterest=$request->pinterest;
            $social->save();
            $request->session()->flash('success','social Updated successfully');

            return response()->json([
                    'status' => true,
                    'message' => 'social Updated successfully',
            ]);

        } else {
            // Validation failed, return validation errors.
            return response()->json([
                'status' => false,
                'errors' => $validator->errors(),
            ]);
        }

    }


    public function destroy($id, Request $request){
        $brand =Social::find($id);

        if (empty($brand)){
            return redirect()->route('social.index');

        }
        $brand->delete();
        $request->session()->flash('success','social Delete successfully');

        return response()->json([
            'status' => true,
            'message' => 'social Delete successfully',
        ]);

    }


}
