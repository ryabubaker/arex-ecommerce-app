<?php
 
/**

 * @author Rewan
 */
class viewcount extends REST
{
    function __construct(){
        parent::__construct();
        global $sql;
        $this->sql = $sql;
    }
    function Init(){
        $sql = $this->sql;
        $prodId = $_REQUEST['prodId'];
        $query = $sql->Execute($sql->Prepare("UPDATE app_products SET PROD_VIEW_COUNT = PROD_VIEW_COUNT + 1 WHERE PROD_ID = $prodId"));
        $stmt =  $sql->Execute($sql->Prepare("SELECT PROD_ID, PROD_VIEW_COUNT FROM app_products WHERE PROD_ID = $prodId"));
        if ($stmt->RecordCount() > 0) {
            $obj = $stmt->GetAll();
            foreach ($obj as $key => $val) {
                $viewinfo[] = array(
                    'id' => $val['PROD_ID'],
                    'view-count' => $val['PROD_VIEW_COUNT']
                );
            }
            $this->response(array("msg"=>"success","data"=>$viewinfo), 200); 
        }
         
    }
}


