<?

class PasswordGenerator
{

    public static function generate($length = 7)
    {
        $chars = array('1','2','3','4','5','6','7','8','9','0','q','w','e','r','t','y','u','i','o','p','a',
      				   's','d','f','g','h','j','k','l','z','x','c','v','b','n','m','Q','W','E','R','T','Y',
      				   'U','I','O','P','A','S','D','F','G','H','J','K','L','Z','X','C','V','B','N','M');

        shuffle($chars);

        $password = substr(implode('', $chars), 0, $length);
        
        return $password;
    }
    
}
