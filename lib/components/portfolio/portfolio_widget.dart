import 'package:flutter/material.dart';
import 'package:flutter_web/components/portfolio/widgets/portfolio_card.dart';

import '../../core/dimens.dart';

class PortfolioWidget extends StatelessWidget {
  const PortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        MediaQuery.sizeOf(context).width * 0.05,
      ),
      child: Column(
        children: [
          const Text(
            "Portfolio",
            style: TextStyle(
              fontSize: Dimens.fontSize48,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: Dimens.size32,
          ),
          SizedBox(
            height: 600,
            child: GridView.count(
              crossAxisCount: 3,
              mainAxisSpacing: 50,
              crossAxisSpacing: 50,
              childAspectRatio: 2,
              children: portfolioCards,
            ),
          ),
        ],
      ),
    );
  }
}

const portfolioCards = [
  PortfolioCard(
    title: "Quillio",
    subtitle:
        "Quillio is a unique personalized diary journal that allows you to write anything from quick notes in seconds to long life-changing insights using colorful themes, audio recordings, and photos. Writing journal has never been easier before. This personal diary with a lock has so many options that millions of users have a million different versions of my diary app",
    url:
        "https://play.google.com/store/apps/details?id=journal.notebook.memoir.write.diary&hl=en_GB",
  ),
  PortfolioCard(
    title: "Calorie Counter",
    subtitle:
        "Meet the most personal Calorie Counter diet app for weight loss. It includes meal plans, a food diary, a macro tracker, healthy recipes, and much more. Start today because the only thing to lose is weight!",
    url:
        "https://play.google.com/store/apps/details?id=nutrition.healthy.diet.dietplan.caloriecounter&hl=en_GB",
  ),
  PortfolioCard(
    title: "Abs Workout",
    subtitle:
        "Abs Workout is a personal trainer app that helps you build an amazing six pack body and core strength using personalized abs challenges. ",
    url:
        "https://play.google.com/store/apps/details?id=abexercises.absworkout.sixpack.abs&hl=en_GB",
  ),
  PortfolioCard(
    title: "My Notes",
    subtitle:
        "Meet the most personal Calorie Counter diet app for weight loss. It includes meal plans, a food diary, a macro tracker, healthy recipes, and much more. Start today because the only thing to lose is weight!",
    url: "https://apps.apple.com/no/app/my-notes-notebook-notepad/id6450179185",
  ),
  PortfolioCard(
    title: "Workout Tracker",
    subtitle:
        "Track your progress, smash your goals, and simplify your fitness journey with our all-in-one workout tracker.",
    url:
        "https://apps.apple.com/no/app/workout-tracker-gym-routine/id1668821885",
  ),
  PortfolioCard(
    title: "Drink Water Reminder",
    subtitle:
        "Drinking enough water will become a healthy habit thanks to this app and its great features. Drink Water Reminder will be your health and beauty companion.",
    url:
        "https://apps.apple.com/no/app/drink-water-my-daily-tracker/id1613735266",
  ),
];
