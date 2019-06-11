<footer class="footer">
    <div class="container">
        <div class="row mb-5">
            <div class="col-md-6 col-lg-4">
                <h3 class="heading-section">A propos</h3>
                <p class="mb-5"> {!!str_limit($about->texte1, 230)!!} </p>
                <p><a href="{{route('about.index')}}" class="btn btn-primary px-4">Button</a></p>
            </div>
            <div class="col-md-6 col-lg-4">
                <h3 class="heading-section">Blog</h3>
                @foreach($newPosts as $post)
                    <div class="block-21 d-flex mb-4">
                        <figure class="mr-3">
                            <img src="{{Voyager::image($post->thumbnail('small', 'image'))}}" alt="" class="img-fluid">
                        </figure>
                        <div class="text">
                            <h3 class="heading"><a href="#">{{$post->titre}}</a></h3>
                            <div class="meta">
                                <div><a href="#"><span class="icon-calendar"></span> May 29, 2018</a></div>
                            </div>
                        </div>
                    </div>
                    @if($loop->iteration == 3) @break @endif
                @endforeach
            </div>
            <div class="col-md-6 col-lg-4">
                <div class="block-23">
                    <h3 class="heading-section">Contact Info</h3>
                    <ul>
                        <li><a href="#"><span class="icon icon-phone"></span><span class="text">(+228) {{implode(' / ', [$alcor->tel1, $alcor->tel2, $alcor->tel3, $alcor->tel4, $alcor->tel5])}}  </span></a></li>
                        <li><a href="#"><span class="icon icon-envelope"></span><span class="text"><span class="__cf_email__" ></span>  {{implode(' / ', [$alcor->mail1, $alcor->mail2, $alcor->mail3, $alcor->mail4, $alcor->mail5])}}   </span></a></li>
                        <li><span class="icon icon-clock-o"></span><span class="text">Lundi &mdash; Dimanche 8:00 - 5:00</span></li>
                    </ul>
                </div>
            </div>


        </div>
        <div class="row pt-5">
            <div class="col-md-12 text-left">
                <p>
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved 
                </p>
            </div>
        </div>
    </div>
</footer>


    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title text-white" id="myModalLabel">Reserver en ligne</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span class="text-white" aria-hidden="true">&times;</span></button>
                </div>

                <div class="modal-body pt-0">

                    <div class="about-grids" style="margin-top: 0; margin-bottom: 0">
                        <div class="about-grids-top">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="row about-grids-left" style="margin-bottom: 0">
                                        <div class="col-md-12 p-0 about-grid image">
                                            <img class="w-100" id="reservation-image" >
                                            
                                        </div>
                                        <div class="col-md-12 about-grid about-grid-info">
                                            <h4 style="display: inline;" id="reservation-name"></h4>
                                            <div style="color: #ff4c4c;font-size: xx-large;font-weight: 700;display: inline;">
                                                <span> <span id="reservation-prix"></span> FCFA</span>
                                            </div>
                                            
                                        </div>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    
                    <hr>

                    <div class="contact-form">

                        <h5>Entrer vos coordonnés pour reservationr</h5>
                        <form action="{{route('contacts.store')}}" method="post">
                            @csrf

                            <div class="form-group">
                                <input type="text" name="name" class="form-control px-3 py-3" placeholder="Votre Nom" required="">
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" class="form-control px-3 py-3" placeholder="Votre Email">
                            </div>
                            <div class="form-group">
                                <input type="text" name="phone" class="form-control px-3 py-3" placeholder="Telephone" required="">
                            </div>

                            <div class="form-group">
                                <input type="number" id="jours" class="form-control px-3 py-3" placeholder="Nombre de jours" required="">
                            </div>

                            <div class="form-group" style="display: none">
                                <textarea name="message" id="message" cols="30" rows="7" class="form-control px-3 py-3" placeholder="Message" required=""></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Envoyer" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>
                    </div>


                </div>

                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>





<script src="{{asset('js/jquery.min.js')}}"></script>
<script src="{{asset('js/jquery-migrate-3.0.1')}}.min.js"></script>
<script src="{{asset('js/popper.min.js')}}"></script>
<script src="{{asset('js/bootstrap.min.js')}}"></script>
<script src="{{asset('js/jquery.easing.1.3.js')}}"></script>
<script src="{{asset('js/jquery.waypoints.min.js')}}"></script>
<script src="{{asset('js/jquery.stellar.min.js')}}"></script>
<script src="{{asset('js/owl.carousel.min.js')}}"></script>
<script src="{{asset('js/jquery.magnific-popup.min.js')}}"></script>
<script src="{{asset('js/bootstrap-datepicker.js')}}"></script>

<script src="{{asset('js/aos.js')}}"></script>
<script src="{{asset('js/jquery.animateNumber.min.js')}}"></script>

<script src="{{asset('js/main.js')}}"></script>


    <script>
        
        $('.reserve-modal').on('click', function(event) {
            event.preventDefault();
            var reservation = $(this).data();
            $('#myModal').modal();

            $('#reservation-name').text(reservation.name);
            $('#reservation-image').attr('src', reservation.image);
            $('#reservation-prix').text(reservation.prix);

            $('#jours').on('focusout', function(event) {
                event.preventDefault();
                var jours = $(this).val();
            });
            

            $('#message').val('reservation de'+ ' ' + reservation.name + ' , jours :' + ' ' + jours + ' ' + ' prix : ' +  reservation.prix );

        });

    </script>