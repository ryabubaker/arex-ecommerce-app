<?php

/**
 * 
 *
 * 
 *
 * 
 * @author Rewan
 */
class fetchsubcategory  extends REST
{
    function __construct(){
        parent::__construct();
        global$sql;
        $this->sql=$sql;
    }
    function Init(){
        $sql=$this->sql;
        $categoryId = $_REQUEST['categoryId'];

        $stmt = $sql->Execute(
            $sql->Prepare(
                "SELECT c.CHILD_CTG_ID, c.SUB_CTG_ID, c.CHILD_NAME, s.SUB_CTG_NAME
                FROM app_child_ctg c
                INNER JOIN app_sub_ctg s ON c.SUB_CTG_ID = s.SUB_CTG_ID
                WHERE c.CTG_ID = $categoryId AND s.STATUS = 1
                ORDER BY s.SUB_CTG_ID, c.CHILD_CTG_ID"
            )
        );
        
        if ($stmt) {
            $obj = $stmt->GetAll();
            $subcategory = array();
        
            $subcategoriesBySubId = array();
        
            foreach ($obj as $key => $val) {
                $subcategoryId = $val['SUB_CTG_ID'];
        
                if (!isset($subcategoriesBySubId[$subcategoryId])) {
                    $subcategoriesBySubId[$subcategoryId] = array(
                        'subId' => $subcategoryId,
                        'name' => $val['SUB_CTG_NAME'],
                        'childCategories' => array(),
                    );
                }
        
                $subcategoriesBySubId[$subcategoryId]['childCategories'][] = array(
                    'subId' => $subcategoryId,
                    'childId' => $val['CHILD_CTG_ID'],
                    'name' => $val['CHILD_NAME'],
                );
            }
        
            $subcategory = array_values($subcategoriesBySubId);
        
     
            $this->response(array("msg" => "success", "data" => $subcategory), 200);
        } else {
            $this->response(array("msg" => "Error", "data" => $sql->ErrorMsg()), 204); // Handle any errors
        }
    }            
    
}