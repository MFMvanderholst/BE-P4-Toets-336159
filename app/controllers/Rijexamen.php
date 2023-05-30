<?php

    class Rijexamen extends BaseController
    {
        private $rijexamenmodel;

        public function __construct()
        {
            $this->rijexamenmodel = $this->model('RijexamenModel');
        }

        public function OverzichtRijExamen()
        {
            
        }
    }