import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/tutorial_component_widget.dart';

// Focus widget keys for this walkthrough
final textX0e6j4d1 = GlobalKey();
final textP8hdpgdx = GlobalKey();
final containerJ1h8ntx4 = GlobalKey();

/// homeAlumnWithOutCareer
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// nameAndSurname: Aquí tendras tu Nombre y Apellido.
      TargetFocus(
        keyTarget: textX0e6j4d1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Aquí tendras tu Nombre y Apellido.',
            ),
          ),
        ],
      ),

      /// AgeAlumn: Aquí tendrás tu edad.
      TargetFocus(
        keyTarget: textP8hdpgdx,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Aquí tendrás tu edad.',
            ),
          ),
        ],
      ),

      /// cardCareer
      TargetFocus(
        keyTarget: containerJ1h8ntx4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Aquí tendras las carreras que te puedes registrar.',
            ),
          ),
        ],
      ),

      /// switchCard
      TargetFocus(
        keyTarget: containerJ1h8ntx4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Si le das click a la tarjeta, te mostrará la descripcion de esta misma.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: containerJ1h8ntx4,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Para registrarte en la carrera tendras que arrastrar hacia la derecha y confirmar.',
            ),
          ),
        ],
      ),
    ];
