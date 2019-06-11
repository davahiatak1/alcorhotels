<?php

namespace App\Mail;

use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class ContactAndReserve extends Mailable
{
    use Queueable, SerializesModels;

    /**
     * Create a new message instance.
     *
     * @return void
     */

    protected $contact;

    public function __construct($reserve)
    {
        $this->contact = [
            'name' => $reserve['name'],
            'email' => $reserve['email'], 
            'phone' => $reserve['phone'], 
            'message' => $reserve['message']
        ];
    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        return $this->markdown('emails.contact-and-reserve')->with([
            'name' => $this->contact['name'],
            'email' => $this->contact['email'], 
            'phone' => $this->contact['phone'], 
            'message' => $this->contact['message'], 
        ]);
    }
}
