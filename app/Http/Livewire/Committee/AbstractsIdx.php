<?php

namespace App\Http\Livewire\Committee;
use App\Models\Manuscript_Sympozia;

use Livewire\Component;

class AbstractsIdx extends Component
{
    public function render()
    {
        $papers = Manuscript_Sympozia::all();
        return view('livewire.committee.submission.idx', compact('papers'))->layout('adminlte::page');
    }
}
