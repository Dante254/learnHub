import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute( 
        path: '/',
        name: 'home',
        builder: (context, state) => const HomeScreen(),
      ),

       GoRoute( 
        path: '/login',
        name: 'login',
        builder: (context, state) => const LoginScreen(),
      ),

       GoRoute( 
        path: '/',
        name: 'home',
        builder: (context, state) => const ProgramListingScreen(),
      ),

       GoRoute( 
        path: '/',
        name: 'home',
        builder: (context, state) => const ProgramDetailScreen(),
      ),

       GoRoute( 
        path: '/',
        name: 'home',
        builder: (context, state) => const AdminDashboard(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center (
        child: Text('Page not found;')
      ),
    ),
  );
}



class HomeScreen extends StatelessWidget {
const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) { //Filler code to be filled once all screens are ready
    return Scaffold( 
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushNamed('details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

class LoginScreen extends StatelessWidget {
const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushNamed('details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

class ProgramListingScreen extends StatelessWidget {
const ProgramListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Program Listing')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushNamed('details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

class ProgramDetailScreen extends StatelessWidget {
const ProgramDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Program Detail')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushNamed('details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

class AdminDashboard extends StatelessWidget {
const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Dashboard')),
      body: Center(
        child: FilledButton(
          onPressed: () => context.pushNamed('details'),
          child: const Text('Go to Details'),
        ),
      ),
    );
  }
}

