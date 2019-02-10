
               <form method="POST" action="{{ route('login') }}" aria-label="{{ __('Login') }}">  
                    <h2>{{ __('Login') }}</h2>          
                    <label for="email">{{ __('E-Mail') }}</label>
                    <p> @if ($errors->has('email'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                        @csrf</p>
                    <input type="text" name="email" placeholder="e.g. judgejudy@gmail.com" value="{{ old('email') }}" required  autofocus/>
                        @csrf
                    <label for="password">{{ __('Password') }}</label>
                    <p>@if ($errors->has('password'))
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif          </p>
                    <input type="password"  name="password" required />
                    
                    <div class = "btn-group">
                         <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                                    <label class="form-check-label" for="remember">
                                        {{ __('Remember Me') }}
                                    </label>
                        <input type="submit" class="btn-login" value = "{{ __('Login') }}" />
                
                      <a href ="{{ url('social/auth/facebook') }}"> <button type="button" class="btn-facebook" > Login with Facebook</button> </a>
                        <button class="btn-google">Sign In with Google</button>
                         <a class="btn btn-link" type="button" href="{{ route('password.request') }}">
                                    {{ __('Forgot Your Password?') }}
                                </a>
                    </div>
            </form>
           


