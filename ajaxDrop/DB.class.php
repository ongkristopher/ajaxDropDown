<?php
class DB {

        private $pdo;

        public function __construct($host, $dbname, $username, $password) {
                $pdo = new PDO('mysql:host='.$host.';dbname='.$dbname.';charset=utf8', $username, $password);
                $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $this->pdo = $pdo;
        }

        public function query($query, $params = array()) {
                $statement = $this->pdo->prepare($query);
                $statement->execute($params);
                
                function stripslashes_deep($value){
                        $value = is_array($value) ?
                                array_map('stripslashes_deep', $value) :
                                htmlspecialchars(stripslashes($value));
                        return $value;
                }

                $return = $statement->fetchAll(PDO::FETCH_ASSOC);
                $array = stripslashes_deep($return);

                return $array;
        }
}