<?php

    class rijexamenModel
    {
        private $db;

        public function __construct()
        {
            $this->db = new Database();
        }

        public function getOverzicht()
        {
            $sql = "SELECT exnato.Voornaam, exnato.Tussenvoegsel, exnato.Achternaam, exa.Datum, exa.Rijbewijscategorie, exa.Rijschool, exa.Stad, exa.Uitslag
                    FROM ExamenPerExaminator epe
                    INNER JOIN Examen exa ON epe.ExamenId = exa.Id
                    INNER JOIN Examinator exnato ON epe.ExaminatorId = exnato.Id
                    order by exnato.Voornaam";

            $this->db->query($sql);
            return $this->db->resultSet();
        }
    }