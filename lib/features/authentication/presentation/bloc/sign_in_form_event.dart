part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signinWithEmailAndPasswordPressed() =
      SigninWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signinWithGooglePressed() =
      SigninWithWithGooglePressed;
  const factory SignInFormEvent.toggleShowPasswordPressed() =
      ToggleShowPasswordPressed;
  const factory SignInFormEvent.signInWithFacebookPressed() =
      SignInWithFacebookPressed;
  const factory SignInFormEvent.signInWithTwitterPressed() =
      SignInWithTwitterPressed;
}