class LoginState {
  final bool isLoading;
  final bool isSuccess;
  final bool isFailure;

  LoginState(this.isLoading, this.isSuccess, this.isFailure);
  factory LoginState.initial() => LoginState(false, false, true);
  factory LoginState.loading() => LoginState(true, false, false);
  factory LoginState.success() => LoginState(false, true, false);
  factory LoginState.failure() => LoginState(false, false, true);
}
