import 'package:flutter/material.dart';
import '../../theme/color.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _acceptedTerms = false;
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 48),
                // Logo
                Image.asset('assets/logo/app-logo.png', height: 80),
                const SizedBox(height: 48),
                // Sign up Text
                Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: TrekkColors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                // Email Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    filled: true,
                    fillColor: TrekkColors.formBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: TrekkColors.formBorder),
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 16),
                // Password Field
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                    filled: true,
                    fillColor: TrekkColors.formBackground,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: TrekkColors.formBorder),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: TrekkColors.textSecondary,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscurePassword,
                ),
                const SizedBox(height: 16),
                // Terms and Conditions Checkbox
                Row(
                  children: [
                    Checkbox(
                      value: _acceptedTerms,
                      onChanged: (value) {
                        setState(() {
                          _acceptedTerms = value ?? false;
                        });
                      },
                      activeColor: TrekkColors.primary,
                    ),
                    Expanded(
                      child: Text(
                        'Agree with Term & Condition',
                        style: TextStyle(color: TrekkColors.textSecondary),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Sign up Button
                ElevatedButton(
                  onPressed: _acceptedTerms
                      ? () {
                          // Handle sign up
                        }
                      : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: TrekkColors.primary,
                    foregroundColor: TrekkColors.background,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Sign up',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 24),
                // Social Login Options
                Row(
                  children: [
                    Expanded(
                      child: Divider(thickness: 1, color: TrekkColors.divider),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: TrekkColors.textSecondary),
                      ),
                    ),
                    Expanded(
                      child: Divider(thickness: 1, color: TrekkColors.divider),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Social Login Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _socialLoginButton(
                      onPressed: () {
                        // Handle Google sign up
                      },
                      icon: 'assets/icons/google.png',
                      label: 'Google',
                    ),
                    _socialLoginButton(
                      onPressed: () {
                        // Handle Facebook sign up
                      },
                      icon: 'assets/icons/facebook.png',
                      label: 'Facebook',
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Sign In Link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: TextStyle(color: TrekkColors.textSecondary),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: TrekkColors.primary,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialLoginButton({
    required VoidCallback onPressed,
    required String icon,
    required String label,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: TrekkColors.background,
        foregroundColor: TrekkColors.textPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: TrekkColors.formBorder),
        ),
      ),
      child: Row(
        children: [
          Image.asset(icon, height: 24),
          const SizedBox(width: 8),
          Text(label, style: TextStyle(color: TrekkColors.textPrimary)),
        ],
      ),
    );
  }
}
