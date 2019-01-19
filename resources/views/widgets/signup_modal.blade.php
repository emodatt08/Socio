<div id = "signup_modal" class = "signUpModal">
    <div class = "signup_content">
        <span id="closeBtn" class="closeBtn">&times;</span>
       <div class="signupModalForm">
            <h2>SignIn</h2>
               <label>Country</label>
                <select class = "country" name="country">
                    @foreach($countries as $country)
                    <option 
                    style = "background-image:url({{url('/')}}/images/flags/{{$country->flag32}});" 
                             value = "{{$country->dial_code}}">{{$country->name}}&nbsp;({{$country->dial_code}})</option>
                    @endforeach
                </select>

                 <label>Mobile Number</label>
                 <input type="text" name="username" placeholder="e.g. 0241763218"/>

                <label>Username</label>
                <input type="text" name="username" placeholder="e.g. Judge judy"/>

                <label>Password</label>
                <input type="password" name="password" />
                <div class = "btn-group">
                    <button class="btn-login">Sign Up</button>
                    <button class="btn-facebook">Sign Up with Facebook</button>
                    <button class="btn-google">Sign Up with Google</button>
                </div>
           
        </div>
    </div>
</div>  