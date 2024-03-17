<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{
    public function AdminDashboard(){
        return view('admin.index');
    }

     public function AdminLogout(Request $request)
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/admin/login');
    }
    public function AdminLogin(){
        return view('admin.admin_login');
    }
    public function AdminProfileView(){
        $id = Auth::user()->id;
        $profileData = User::find($id);
         return view('admin.admin_profile_view' , compact('profileData'));
    }

    public function AdminProfileUpdate(Request $request){
       $data = User::find(1);
       $data->name = $request->name;
       $data->email = $request->email;
       $data->phone = $request->phone;
       $data->address = $request->address;


       if($request->file('photo')){
        $file = $request->file('photo');
        @unlink(public_path('upload/admin_images/'. $data->photo));
        $filename = date('YmdHi').$file->getClientOriginalName();
        $file->move(public_path('upload/admin_images'), $filename);
        $data['photo'] = $filename;
       }
       $data->save();
       $notification = array(
        'message' => 'Admin Profile updated  Successfully', 
        'alert-type' => 'success'
       );
       return redirect()->back()->with($notification);
    }

    public function AdminChangePassword(){
        return view('admin.change_password');
    }

     public function AdminPasswordUpdate(Request $request){

        // Validation 
        $request->validate([
            'old_password' => 'required',
            'new_password' => 'required|confirmed'
        ]);

        if(!Hash::check($request->old_password, auth::user()->password)){

            $notification = array(
                'message' => 'Current Password Does not Match!',
                'alert-type' => 'error'
            );

            return back()->with($notification);

        }

        /// Update The New Password 
        User::whereId(auth::user()->id)->update([
            'password' => Hash::make($request->new_password)
        ]);

        $notification = array(
            'message' => 'Password Change Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.login')->with($notification); 

    }// End Method 


}

