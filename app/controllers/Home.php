<?php

class Home extends Controller {
    public function index(){
       $this->view('home/index');
    }

    public function page(){
        $this->view('home/page');
    }
}
