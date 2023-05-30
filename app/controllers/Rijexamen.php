<?php

    class Rijexamen extends BaseController
    {
        private $rijexamenModel;

        public function __construct()
        {
            $this->rijexamenModel = $this->model('RijexamenModel');
        }

        public function OverzichtRijExamen()
        {
            $result = $this->rijexaMenmodel->getOvezicht();
        }
    }