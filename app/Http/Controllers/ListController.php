<?php

namespace App\Http\Controllers;

use App\Http\Requests\StoreListaRequest;
use App\Models\Lista;
use Illuminate\Http\Request;

class ListController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view("email-list.index",[
            'EmailList'=>Lista::query()->paginate()
        ]);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('email-list.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreListaRequest $request)
    {
        $data = $request->validated();
        
        $items = $this->getEmailsFromCsvFile($request->file('file'));

        $emailList = DB::transaction(function() use ($request, $items){
            $emailList = Lista::query()->create([
                'title'=> $request->title
            ]);
        
            $emailList->subscribers()->createMany($items);
            return $emailList;
        });
        
       
        return to_route('email-list.index');
    }

    private function getEmailsFromCsvFile(UploadedFile $file):array{
        
        $fileHandler = fopen($file->getRealPath(), 'r');
        $items = [];
        
        while(($row = fgetcsv($fileHandler, null, ','))!==false){
            if($row[0]=='Name' && $row[1]=='Email'){
                continue;
            }

            $items[] = [
                'name'=>$row[0],
                'email'=>$row[1]
            ];
        }
        fclose($fileHandler);
    }

    /**
     * Display the specified resource.
     */
    public function show(Lista $lista)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Lista $lista)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Lista $lista)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Lista $lista)
    {
        //
    }
}
