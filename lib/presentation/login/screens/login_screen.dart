import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/getit.dart';
import '../../../core/router/app_router.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';
import '../../widgets/app_phone_picker.dart';
import '../../widgets/app_primary_button.dart';
import '../../widgets/app_text_button.dart';
import '../../widgets/app_text_field.dart';
import '../../widgets/app_unfocus_area.dart';
import '../../widgets/gap.dart';
import '../cubit/login_cubit.dart';
import '../widgets/password_text_field.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return UnfocusArea(
      body: BlocProvider(
        create: (context) => getIt<LoginCubit>()..init(),
        child: Scaffold(
          backgroundColor: AppColors.scaffoldColor,
          body: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.mapOrNull(
                success: (success) {
                  context.router.replaceAll([const HomeRoute()]);
                },
                error: (error) {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Error"),
                          content: Text(error.error.getFailure()),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text("OK"),
                            )
                          ],
                        );
                      });
                },
              );
            },
            buildWhen: (previous, current) => current.maybeMap(
              orElse: () => false,
              loaded: (loaded) => true,
            ),
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => const SizedBox.shrink(),
                loaded: (loadedState) {
                  return _LoadedForm(state: loadedState);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class _LoadedForm extends StatelessWidget {
  const _LoadedForm({required this.state});

  final LoadedState state;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Gap(h: 96),
                Text("Log In", style: AppTextStyle.largeTitle),
                const Gap(h: 32),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: AppPhonePicker(
                    counties: state.countries,
                    selectedCountry: state.selectedCountry,
                    errorText: state.phoneNumberValidator.failure?.getFailure(),
                    showError: state.shouldShowError,
                    onChangePhoneNumber: cubit.onChangePhoneNumber,
                    onCountrySelected: (country) {
                      cubit.onCountrySelected(country);
                    },
                  ),
                ),
                if (state.isCreateAccount)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: AppPrimaryTextField(
                        labelText: 'Name', onChanged: (val) {}),
                  ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: PasswordTextField(
                    labelText: 'Password',
                    onChanged: cubit.onChangePassword,
                    showError: state.shouldShowError,
                    errorText: state.passwordValidator.failure?.getFailure(),
                  ),
                ),
                if (state.isCreateAccount)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: PasswordTextField(
                        labelText: 'Repeat password',
                        onChanged: (value) {
                          cubit.onChangeConfirmPassword(state.password, value);
                        },
                        showError: state.shouldShowError,
                        errorText: state.confirmPasswordValidator.failure
                            ?.getFailure()),
                  ),
                const Gap(h: 32),
                if (!state.isCreateAccount)
                  Align(
                    alignment: Alignment.center,
                    child: AppTextButton(
                      text: "Trouble logging in?",
                      onPressed: () {},
                    ),
                  ),
              ],
            ),
            Column(
              children: [
                AppPrimaryButton(
                    text: (state.isCreateAccount) ? "Create account" : "Log In",
                    onPressed: cubit.onLogin),
                const Gap(h: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      (state.isCreateAccount)
                          ? "Already have an account? "
                          : "Don't have an account? ",
                      style: AppTextStyle.body_1,
                    ),
                    AppTextButton(
                        text: (state.isCreateAccount)
                            ? "Log In"
                            : "Create Account",
                        onPressed: cubit.onFormChange),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
