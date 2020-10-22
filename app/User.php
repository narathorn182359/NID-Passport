<?php
namespace App;
use Laravel\Passport\HasApiTokens;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Spatie\Permission\Traits\HasRoles;
use Illuminate\Support\Facades\Hash;
class User extends Authenticatable
{
  use HasApiTokens, Notifiable,HasRoles;

/**
* The attributes that are mass assignable.
*
* @var array
*/
protected $fillable = [
'username', 'id_card', 'password','active'
];
/**
* The attributes that should be hidden for arrays.
*
* @var array
*/
protected $hidden = [
'password', 'remember_token',
];
public function findForPassport($username) {

  return $this->orWhere('id_card', $username)->orwhere('username', $username)->first();

}








}
