@include('widgets.header')



        <div class="wrap">
            <h2>Login</h2>
                           
                <label>Username</label>
                <input type="text" name="username" placeholder="e.g. Judge judy"/>

                <label>Password</label>
                <input type="password" name="password" />
                <div class = "btn-group">
                    <button class="btn-login">Login</button>
                    <button class="btn-facebook">Login with Facebook</button>
                    <button class="btn-google">Sign In with Google</button>
                </div>
           
        </div>

        <div class="col-md-6">
                <!-- <div class="contents">
                    <section id="content1" class="tab-content">

                        include('auth.login')

                    </section>

                    <section id="content2" class="tab-content">
                        include('auth.register')

                    </section>
                </div> -->
            </div>

    </div>
</div>
 @include('widgets.signup_modal')
  @include('widgets.footer')
