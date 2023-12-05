<?php
 
/**

 * @author Rewan
 */
class trendingproducts extends REST
{
    function __construct(){
        parent::__construct();
        global $sql;
        $this->sql = $sql;
    }
    function Init(){
        $sql = $this->sql;
        $stmt = $sql->Execute($sql->Prepare("SELECT * FROM app_products ORDER BY PROD_VIEW_COUNT DESC, PROD_LIKE_COUNT DESC LIMIT 20")); 
        
        if ($stmt->RecordCount() > 0) {
            $obj = $stmt->GetAll();
            foreach ($obj as $key => $val) {
                $trendingprod[] = array(
                    'id' => $val['PROD_ID'],
                    'rootid' => $val['CTG_ID'],
                    'subid' => $val['SUB_CTG_ID'],
                    'childid' => $val['CHILD_CTG_ID'],
                    'name' => $val['PROD_NAME'],
                    'short_disc' => $val['PROD_SHORT_DISC'],
                    'long_disc' => $val['PROD_DISCRIPTION'],
                    'discount' => $val['PROD_DISCOUNT'],
                    'price_before' => number_format($val['PROD_DISCOUNT'],2),
                    'final_price' => round($val['PROD_FINAL_AMOUNT'] -($val['PROD_FINAL_AMOUNT'] * $val['PROD_DISCOUNT']/100), 2),
                    'img' => $val['PROD_IMAGE'],
                    'liked' => $this->get_likes($this->usrCode, $val['PROD_ID']),
                );
            }
            $this->response(array("msg" => "success", 'data' => $trendingprod), 200);
        } else {
             // Handle the case when the search term is empty
            $this->response(array("msg" => "error", "data" => $sql->ErrorMsg()), 204);
  
        }
    }
    public function get_likes($user_code,$prod_id){
        $sql=$this->sql; $exits = '0';
        $stmt = $sql->Execute($sql->Prepare("SELECT PROD_ID FROM app_wishlist WHERE PROD_ID = ? AND USR_CODE = ? "), [$prod_id,$user_code]);
        if($stmt && $stmt->RecordCount() > 0){
            $exits = '1';
        }else{
            $exits = '0';
        }
        return $exits;
    }
    
}


