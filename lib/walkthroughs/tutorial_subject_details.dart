import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/tutorial_component_widget.dart';

// Focus widget keys for this walkthrough
final textSreoyu6y = GlobalKey();
final iconButtonAkc5cyxu = GlobalKey();
final column4ptfk9j3 = GlobalKey();
final containerL809lq1a = GlobalKey();
final column8nshkzt1 = GlobalKey();

/// TutorialSubjectDetails
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// Step 1
      TargetFocus(
        keyTarget: textSreoyu6y,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Esta es la pantalla de detalles de las asignaturas.',
            ),
          ),
        ],
      ),

      /// Step 2
      TargetFocus(
        keyTarget: iconButtonAkc5cyxu,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Con este boton podrás ir a la pantalla anterior.',
            ),
          ),
        ],
      ),

      /// Step 3
      TargetFocus(
        keyTarget: column4ptfk9j3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Aquí tendrás el nombre y descripción de la asignatura.',
            ),
          ),
        ],
      ),

      /// Step 4
      TargetFocus(
        keyTarget: containerL809lq1a,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Aquí tendrás el nombre del profesor que imparte esta asignatura.',
            ),
          ),
        ],
      ),

      /// Step 5
      TargetFocus(
        keyTarget: column8nshkzt1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Aquí tendrás la nota actual que tienes en esta asignatura.',
            ),
          ),
        ],
      ),

      /// Step 6
      TargetFocus(
        keyTarget: column8nshkzt1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Si no tienes nota asignada , te saldrá un contenedor indicandolo. ',
            ),
          ),
        ],
      ),
    ];
