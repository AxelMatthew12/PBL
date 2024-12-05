<?php

class dashboard extends Controller {

    function dosen(){
        $this->view('dosen/index');
    }

    function mahasiswa(){
        $this->view('mahasiswa/index');
    }

}
