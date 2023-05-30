<?php

    class Rijexamen extends BaseController
    {
        private $rijexamenModel;

        public function __construct()
        {
            $this->rijexamenModel = $this->model('RijexamenModel');
        }

        
        public function index()
        {
            $result = $this->rijexamenModel->getOverzicht();

            

            $rows = "";
            foreach ($result as $rijexamen) {
                $date = date_create($rijexamen->Datum);
                $formatted_date = date_format($date, 'd/m/Y');

                $naam = $rijexamen->Voornaam . " " . $rijexamen->Tussenvoegsel . " " . $rijexamen->Achternaam;
    
                $rows .= "<tr>
                            <td>$naam</td>
                            <td>$formatted_date</td>
                            <td>$rijexamen->Rijbewijscategorie</td>
                            <td>$rijexamen->Rijschool</td>
                            <td>$rijexamen->Stad</td>
                            <td>$rijexamen->Uitslag</td>
                          </tr>";                    
            }

            $data = [
                'title' => 'Overzicht Afgenomen Examens Examinatoren',
                'rows' => $rows
            ];

            $this->view('Rijexamen/Overzichtexamens', $data);
        }
    }