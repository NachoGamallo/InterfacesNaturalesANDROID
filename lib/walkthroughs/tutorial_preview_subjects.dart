import 'package:flutter/material.dart';
import 'package:tutorial_coach_mark/tutorial_coach_mark.dart';

import '/components/tutorial_component_widget.dart';

// Focus widget keys for this walkthrough
final text8c64xqcy = GlobalKey();
final textDj1yteyz = GlobalKey();
final columnCpsky69g = GlobalKey();
final textMbmlsfk1 = GlobalKey();
final containerDu5bwsq3 = GlobalKey();
final container0l51tfv3 = GlobalKey();
final buttonVoydq50v = GlobalKey();

/// TutorialPreviewSubjects
///
///
List<TargetFocus> createWalkthroughTargets(BuildContext context) => [
      /// paso1
      TargetFocus(
        keyTarget: text8c64xqcy,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Esta pantalla será la pantalla de asignatuas, donde el usuario vera los siguientes datos',
            ),
          ),
        ],
      ),

      /// paso2
      TargetFocus(
        keyTarget: textDj1yteyz,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Aquí veremos las asignaturas en las que esta registrado.',
            ),
          ),
        ],
      ),

      /// paso3
      TargetFocus(
        keyTarget: columnCpsky69g,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.bottom,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Estos serán los años de la carrera , podras filtrar para ver las asignaturas de un año en concreto',
            ),
          ),
        ],
      ),

      /// paso4
      TargetFocus(
        keyTarget: textMbmlsfk1,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Aquí nos indicará que año esta filtrado, si no hay ninguno marcado mostrará todos.',
            ),
          ),
        ],
      ),

      /// paso5
      TargetFocus(
        keyTarget: containerDu5bwsq3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Aquí tendremos una lista de las asignaturas registradas del usuario',
            ),
          ),
        ],
      ),

      /// paso6
      TargetFocus(
        keyTarget: containerDu5bwsq3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Si lo arrastramos a la derecha iremos a la pantalla de detalles.',
            ),
          ),
        ],
      ),

      /// paso7
      TargetFocus(
        keyTarget: container0l51tfv3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Aquí tendremos las asignaturas en las que no esta registrado el usuario',
            ),
          ),
        ],
      ),

      /// paso8
      TargetFocus(
        keyTarget: buttonVoydq50v,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text: 'Con este boton nos podremos registrar a la asignatura.',
            ),
          ),
        ],
      ),

      /// paso9
      TargetFocus(
        keyTarget: container0l51tfv3,
        enableOverlayTab: true,
        alignSkip: Alignment.bottomRight,
        shape: ShapeLightFocus.Circle,
        color: Colors.black,
        contents: [
          TargetContent(
            align: ContentAlign.top,
            builder: (context, __) => TutorialComponentWidget(
              text:
                  'Si tenemos 10 asinagutas , nos indicara que no podemos registrarnos en más asignaturas.',
            ),
          ),
        ],
      ),
    ];
