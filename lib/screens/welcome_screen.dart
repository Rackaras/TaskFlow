import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

/// Pantalla de bienvenida de TaskFlow (Semana 1 - Sesión 1).
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static const String appName = 'TaskFlow';
  static const String courseName = 'Quinto "B"';
  static const String studentName = 'Raul';
  static const String welcomeMessage =
      'Organiza tu día, una tarea a la vez. ¡Bienvenido a tu nuevo gestor de tareas!';
  static const int pendingTasks = 5;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(title: const Text(appName), centerTitle: true),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircleAvatar(
                  radius: 44,
                  backgroundColor: AppColors.secondary,
                  child: Icon(
                    Icons.task_alt,
                    size: 48,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  appName,
                  style: textTheme.headlineLarge?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  courseName,
                  style: textTheme.titleMedium?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 32),
                Text(
                  'Hola, $studentName',
                  style: textTheme.titleLarge?.copyWith(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  welcomeMessage,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyLarge?.copyWith(
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 32),
                const _PendingTasksCard(count: pendingTasks),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Tarjeta con el contador estático de tareas pendientes.
class _PendingTasksCard extends StatelessWidget {
  const _PendingTasksCard({required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.accent, width: 2),
      ),
      child: Column(
        children: [
          Text(
            '$count',
            style: textTheme.displayMedium?.copyWith(
              color: AppColors.primary,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'tareas pendientes',
            style: textTheme.titleMedium?.copyWith(
              color: AppColors.textPrimary,
            ),
          ),
        ],
      ),
    );
  }
}
