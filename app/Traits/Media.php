<?php
namespace App\Traits;
use Illuminate\Support\Facades\Storage;
trait Media {
    public static function upload($image,string $dir) :string
    {
        $photoName = uniqid() . '.' . $image->extension();
        $image->move(public_path("images/$dir"),$photoName);
        return $photoName;
    }


    public static function upload2(String $title ,$image,string $dir) :string
    {
        $image_name =  uniqid() .'_' . $title . '.' .'png';
        // $path = $image->storeAs(
        //     $dir.'/', $image_name, 's3'
        // );
        $path = Storage::disk('private')->put($dir.'/'.$image_name, $image);

        return $path!='' || $path != null ? $image_name: null;
    }


    public static function change_image(String $title ,$image,string $dir,$old_photo_name) :string
    {
        
    if (Storage::disk('private')->exists('posts/'.$old_photo_name)) {
          Storage::disk('private')->delete('posts/'.$old_photo_name);

    } 
      
        $image_name =  uniqid() .'_' . $title . '.' .'png';
        // $path = $image->storeAs(
        //     $dir.'/', $image_name, 's3'
        // );
        $path = Storage::disk('private')->put($dir.'/'.$image_name, $image);

        return $path!='' || $path != null ? $image_name: null;
    }


    public static function get_path_photo(String $title) :string
    {
        $path = 'private/images/' . $title;
        $filePath = Storage::disk('private')->path($path);

        return $filePath!=''? $filePath: null;
    }


    public static function delete(string $fullPublicPath) :bool
    {
        $oldPhotoPath = public_path("{$fullPublicPath}");
        if (file_exists($oldPhotoPath)) {
            unlink($oldPhotoPath);
            return true;
        }
        return false;
    }
}