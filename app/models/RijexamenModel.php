<?php

    class rijexamenModel
    {
        private $db;

        public function __construct()
        {
            $this->db = new Database();
        }

        public function getOverzicht($Id)
        {
            $sql = "SELECT exnato.Voornaam, exnato.Tussenvoegsel, exnato.Achternaam, exa.Datum, exa.Rijbewijscategorie, exa.Rijschool, exa.Stad, exa.Uitslag
                    FROM ExamenPerExaminator epe
                    INNER JOIN Examen exa ON epe.ExamenId = exa.Id
                    INNER JOIN Examinator exnato ON epe.ExaminatorId = exnato.Id 
                    WHERE ExaminatorId = $Id";

            $this->db->query($sql);
            return $this->db->resultSet();
        }
    }