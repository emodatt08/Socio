@include('widgets.header')


<body>
        <div class="wrap">
            <h2>Login</h2>
                <label>Mobile Number</label>
                <input type="text" name="phonenumber" placeholder="+233"/>

                <label>Username</label>
                <input type="text" name="username" placeholder="e.g. Judge judy"/>

                <label>Password</label>
                <input type="password" name="password" />

            <button class="btn-login">Login</button>
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

  @include('widgets.footer')
