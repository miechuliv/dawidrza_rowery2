<?php 
class ModelCatalogTopListProduct extends Model{



        public function add($data)
        {



                    $this->db->query(" INSERT INTO `".DB_PREFIX."top_list_product` SET  `product_id` = '".(int)$data['product_id']."'
         ,  `product_sort_order` = '".(int)$data['product_sort_order']."'
         ,  `top_list_id` = '".(int)$data['top_list_id']."'
         " );

            return $this->db->getLastId();
        }

        public function edit($id,$data)
        {
            $this->db->query(" UPDATE `".DB_PREFIX."top_list_product` SET  `product_id` = '".(int)$data['product_id']."'  
 ,  `product_sort_order` = '".(int)$data['product_sort_order']."'  
 ,  `top_list_id` = '".(int)$data['top_list_id']."'  
 WHERE `top_list_product_id` = '".$id."' ");
        }

        public function getTopListProducts($id)
        {
            $result = $this->db->query(" SELECT * FROM `".DB_PREFIX."top_list_product`  WHERE `top_list_id` = '".$id."' ");
            var_dump($result->rows);
            return $result->rows;
        }



        public function delete($id)
        {

            $this->db->query("  DELETE FROM `".DB_PREFIX."top_list_product`  WHERE `top_list_id` = '".$id."' ");
        }


}