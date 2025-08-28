import 'package:flutter/material.dart';
import '../../theme/color.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 48),
              // Logo
              Image.asset('assets/logo/app-logo.png', height: 80),
              const SizedBox(height: 48),
              // Login Text
              Text(
                'Login',
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
                      Icons.visibility_off,
                      color: TrekkColors.textSecondary,
                    ),
                    onPressed: () {
                      // Toggle password visibility
                    },
                  ),
                ),
                obscureText: true,
              ),
              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Handle forgot password
                  },
                  child: Text(
                    'Forgot password',
                    style: TextStyle(color: TrekkColors.textSecondary),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Handle login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2B4157),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Login',
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
                      // Handle Google login
                    },
                    icon: 'assets/icons/google.png',
                    label: 'Google',
                  ),
                  _socialLoginButton(
                    onPressed: () {
                      // Handle Facebook login
                    },
                    icon: 'assets/icons/facebook.png',
                    label: 'Facebook',
                  ),
                ],
              ),
              const Spacer(),
              // Sign Up Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(color: TrekkColors.textSecondary),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to sign up screen
                    },
                    child: Text(
                      'Sign up',
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
