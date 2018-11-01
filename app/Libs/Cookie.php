<?
namespace App\Libs;
class Cookie {
	public function __construct(){
	if(!isset($_COOKIE)){
		return redirect() ->back();
	}
	}
	public function deleteAll(){
		//dd($_COOKIE);
		foreach($_COOKIE as $key => $value){
			$id = (int)$key;
			if($id>0){
				setcookie($id, '', time()-1, '/');
			}
		}
		
	}
}