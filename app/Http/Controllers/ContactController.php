<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Contact;
use App\WebSiteInfo;
use App\CustomClass\WebSiteInfoData;
use App\CustomClass\ContactData;

class ContactController extends Controller
{
    public function contact(){
        $web_info = WebSiteInfo::all();
        return view('admin.site_admin.admin.contact')->with([
            'url' => 'contact_list',
            'web_info' => $web_info
        ]);
    }
    public function get_all_contact(){
        $contacts = Contact::orderBy('id', 'desc')->get();
        $arr = [];
        foreach ($contacts as $data) {
            $contacts_data = new ContactData($data->id);
            array_push($arr, $contacts_data->getContactData());
        }
        // return $arr;
        return json_encode($arr);
    }
    public function delete_contact($id){
        Contact::find($id)->delete();
    }
    public function detail_contact($id){
        $contact_data_obj = new ContactData($id);
        $contact_detail = $contact_data_obj->getContactData();
        // return $contact_detail;
        return json_encode($contact_detail);
    }
    
    //Site Info
    public function site_info(){
        $website_info=WebSiteInfoData::getWebSiteInfo();
        return view('admin.site_admin.admin.site_info')->with([
            'url' => 'site_info',
            'website_info' => $website_info
        ]);
    }
    public function update_info(Request $request){
         $id = $request->get('id');
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $image_name = uniqid() . '_' . $image->getClientOriginalName();
            $image->move(public_path('/user/images/'), $image_name);
            $info = WebSiteInfo::find($id);
            $image_path = public_path() . '/user/images/' . $info->sign_photo;
            if (file_exists($image_path)) {
                unlink($image_path);
            }
            WebSiteInfo::findOrFail($id)->update([
                'sign_photo' => $image_name,
                'website_name' => $request->get('website_name'),
                'about' => $request->get('about'),
                'history' => $request->get('history'),
                'vision' => $request->get('vision'),
                'mission' => $request->get('mission'),
                'sign_name' => $request->get('sign_name'),
                'sign_position' => $request->get('sign_position'),
                'email' => $request->get('email'),
                'phone' => $request->get('phone'),
                'address' => $request->get('address')
            ]);
        } else {
            WebSiteInfo::findOrFail($id)->update([
               'website_name' => $request->get('website_name'),
                'about' => $request->get('about'),
                'history' => $request->get('history'),
                'vision' => $request->get('vision'),
                'mission' => $request->get('mission'),
                'sign_name' => $request->get('sign_name'),
                'sign_position' => $request->get('sign_position'),
                'email' => $request->get('email'),
                'phone' => $request->get('phone'),
                'address' => $request->get('address')
            ]);
        }
        return redirect('admin/site_info');
    }
}
