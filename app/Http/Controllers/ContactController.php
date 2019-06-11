<?php

namespace App\Http\Controllers;

use App\Alcor;
use App\Contact;
use App\Mail\ContactAndReserve;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('contact');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $contact = $request->all();
        Contact::create($request->all());
        if (Alcor::all()->isNotEmpty()) {
            if(Alcor::all()->last()->mail1){
                Mail::to(['email' => Alcor::all()->last()->mail1])->send(new ContactAndReserve($request->all()));
            }        

            if(Alcor::all()->last()->mail2){
                Mail::to(['email' => Alcor::all()->last()->mail2])->send(new ContactAndReserve($request->all()));
            }

            if(Alcor::all()->last()->mail3){
                Mail::to(['email' => Alcor::all()->last()->mail1])->send(new ContactAndReserve($request->all()));
            }        

            if(Alcor::all()->last()->mail4){
                Mail::to(['email' => Alcor::all()->last()->mail2])->send(new ContactAndReserve($request->all()));
            }

            if(Alcor::all()->last()->mail5){
                Mail::to(['email' => Alcor::all()->last()->mail1])->send(new ContactAndReserve($request->all()));
            } 
        }
               
        
        return redirect()->route('contacts.index', [

        ])->with('status', 'Votre message a été envoyer avec succès !!');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function edit(Contact $contact)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Contact $contact)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Contact  $contact
     * @return \Illuminate\Http\Response
     */
    public function destroy(Contact $contact)
    {
        //
    }
}
