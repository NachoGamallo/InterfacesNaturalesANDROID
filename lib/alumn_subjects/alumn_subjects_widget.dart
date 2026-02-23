import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alumn_subjects_model.dart';
export 'alumn_subjects_model.dart';

/// "Design a 'Subject Management' screen with a 10-item global limit:
///
/// Year Selection: Create a 2x2 GridView with 4 buttons (Year 1 to Year 4).
///
/// Tapping a button updates a selectedYear Page State.
///
/// Global Counter: Display a header: 'Enrolled: [TotalCount]/10'.
///
/// Logic & Lists:
///
/// Enrolled Subjects List: Show subjects where user_enrolled == true AND year
/// == selectedYear. Tapping navigates to 'Detail Screen'.
///
/// Available Subjects List: Show subjects where user_enrolled == false AND
/// year == selectedYear.
///
/// Strict Visibility Rule: The 'Available Subjects' section (or the 'Enroll'
/// buttons) must have Conditional Visibility: ONLY show if TotalEnrolledCount
/// < 10. If the count is 10, hide this section or show a 'Limit Reached'
/// message.
///
/// Initial Action: If first-time enrollment, auto-assign 10 subjects from
/// Year 1.
///
/// UI: Use Material 3 cards. The GridView for years should be compact. Use
/// App State for the global counter to ensure real-time UI updates."
class AlumnSubjectsWidget extends StatefulWidget {
  const AlumnSubjectsWidget({super.key});

  static String routeName = 'AlumnSubjects';
  static String routePath = '/alumnSubjects';

  @override
  State<AlumnSubjectsWidget> createState() => _AlumnSubjectsWidgetState();
}

class _AlumnSubjectsWidgetState extends State<AlumnSubjectsWidget> {
  late AlumnSubjectsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlumnSubjectsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.allSubjects = await actions.getSubjectsWithAvaliableFilters(
        FFAppState().actualUser.careerId,
        0,
        0,
      );
      _model.subjectsByUser = await actions.getSubjectsWithAvaliableFilters(
        FFAppState().actualUser.careerId,
        FFAppState().actualUser.id,
        0,
      );
      _model.countSubjects = await actions.getNumSubjectsAlumn(
        FFAppState().actualUser.id,
      );
      _model.userActualSubjects = _model.countSubjects;
      safeSetState(() {});
      _model.listSubjects = _model.allSubjects!
          .map((e) => SubjectStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<SubjectStruct>();
      safeSetState(() {});
      _model.listUserSubjects = _model.subjectsByUser!
          .map((e) => SubjectStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<SubjectStruct>();
      safeSetState(() {});
      _model.listWithAllSubjects = _model.allSubjects!
          .map((e) => SubjectStruct.maybeFromMap(e))
          .withoutNulls
          .toList()
          .toList()
          .cast<SubjectStruct>();
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Academic Portal',
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineLarge.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineLarge.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineLarge.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Subject Management',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        font: GoogleFonts.interTight(
                          fontWeight: FontWeight.w600,
                          fontStyle: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .fontStyle,
                        ),
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primary,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Enrolled: ${_model.userActualSubjects?.toString()}/10',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.interTight(
                                fontWeight: FontWeight.bold,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                      ),
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Year',
                      style: FlutterFlowTheme.of(context).titleMedium.override(
                            font: GoogleFonts.interTight(
                              fontWeight: FontWeight.w600,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .fontStyle,
                            ),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                            fontStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .fontStyle,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.yearFilter = 1;
                                        safeSetState(() {});
                                        _model.filterOfYearAndAlumn1 =
                                            await actions
                                                .getSubjectsWithAvaliableFilters(
                                          FFAppState().actualUser.careerId,
                                          FFAppState().actualUser.id,
                                          _model.yearFilter,
                                        );
                                        _model.filterOfYear1 = await actions
                                            .getSubjectsWithAvaliableFilters(
                                          FFAppState().actualUser.careerId,
                                          0,
                                          _model.yearFilter,
                                        );
                                        _model.listSubjects = _model
                                            .filterOfYear1!
                                            .map((e) =>
                                                SubjectStruct.maybeFromMap(e))
                                            .withoutNulls
                                            .toList()
                                            .cast<SubjectStruct>();
                                        safeSetState(() {});
                                        _model.listUserSubjects = _model
                                            .filterOfYearAndAlumn1!
                                            .map((e) =>
                                                SubjectStruct.maybeFromMap(e))
                                            .withoutNulls
                                            .toList()
                                            .cast<SubjectStruct>();
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          color: _model.yearFilter == 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF1F4F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Year 1',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color:
                                                        _model.yearFilter == 1
                                                            ? Colors.white
                                                            : Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 10.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.yearFilter = 2;
                                        safeSetState(() {});
                                        _model.filterOfYearAndAlumn2 =
                                            await actions
                                                .getSubjectsWithAvaliableFilters(
                                          FFAppState().actualUser.careerId,
                                          FFAppState().actualUser.id,
                                          _model.yearFilter,
                                        );
                                        _model.filterOfYear2 = await actions
                                            .getSubjectsWithAvaliableFilters(
                                          FFAppState().actualUser.careerId,
                                          0,
                                          _model.yearFilter,
                                        );
                                        _model.listSubjects = _model
                                            .filterOfYear2!
                                            .map((e) =>
                                                SubjectStruct.maybeFromMap(e))
                                            .withoutNulls
                                            .toList()
                                            .cast<SubjectStruct>();
                                        safeSetState(() {});
                                        _model.listUserSubjects = _model
                                            .filterOfYearAndAlumn2!
                                            .map((e) =>
                                                SubjectStruct.maybeFromMap(e))
                                            .withoutNulls
                                            .toList()
                                            .cast<SubjectStruct>();
                                        safeSetState(() {});

                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          color: _model.yearFilter == 2
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0xFFF1F4F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              'Year 2',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color:
                                                        _model.yearFilter == 2
                                                            ? Colors.white
                                                            : Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.yearFilter = 3;
                                      safeSetState(() {});
                                      _model.filterOfYearAndAlumn3 =
                                          await actions
                                              .getSubjectsWithAvaliableFilters(
                                        FFAppState().actualUser.careerId,
                                        FFAppState().actualUser.id,
                                        _model.yearFilter,
                                      );
                                      _model.filterOfYear3 = await actions
                                          .getSubjectsWithAvaliableFilters(
                                        FFAppState().actualUser.careerId,
                                        0,
                                        _model.yearFilter,
                                      );
                                      _model.listSubjects = _model
                                          .filterOfYear3!
                                          .map((e) =>
                                              SubjectStruct.maybeFromMap(e))
                                          .withoutNulls
                                          .toList()
                                          .cast<SubjectStruct>();
                                      safeSetState(() {});
                                      _model.listUserSubjects = _model
                                          .filterOfYearAndAlumn3!
                                          .map((e) =>
                                              SubjectStruct.maybeFromMap(e))
                                          .withoutNulls
                                          .toList()
                                          .cast<SubjectStruct>();
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        color: _model.yearFilter == 3
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0xFFF1F4F8),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(
                                            'Year 3',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  font: GoogleFonts.interTight(
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                                  color: _model.yearFilter == 3
                                                      ? Colors.white
                                                      : Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .fontStyle,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.yearFilter = 4;
                                      safeSetState(() {});
                                      _model.filterOfYearAndAlumn4 =
                                          await actions
                                              .getSubjectsWithAvaliableFilters(
                                        FFAppState().actualUser.careerId,
                                        FFAppState().actualUser.id,
                                        _model.yearFilter,
                                      );
                                      _model.filterOfYear4 = await actions
                                          .getSubjectsWithAvaliableFilters(
                                        FFAppState().actualUser.careerId,
                                        0,
                                        _model.yearFilter,
                                      );
                                      _model.listSubjects = _model
                                          .filterOfYear4!
                                          .map((e) =>
                                              SubjectStruct.maybeFromMap(e))
                                          .withoutNulls
                                          .toList()
                                          .cast<SubjectStruct>();
                                      safeSetState(() {});
                                      _model.listUserSubjects = _model
                                          .filterOfYearAndAlumn4!
                                          .map((e) =>
                                              SubjectStruct.maybeFromMap(e))
                                          .withoutNulls
                                          .toList()
                                          .cast<SubjectStruct>();
                                      safeSetState(() {});

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      height: 48.0,
                                      decoration: BoxDecoration(
                                        color: _model.yearFilter == 4
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0xFFF1F4F8),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.yearFilter = 4;
                                              safeSetState(() {});
                                              _model.filterOfYearAndAlumn =
                                                  await actions
                                                      .getSubjectsWithAvaliableFilters(
                                                FFAppState()
                                                    .actualUser
                                                    .careerId,
                                                FFAppState().actualUser.id,
                                                _model.yearFilter,
                                              );
                                              _model.filterOfYear = await actions
                                                  .getSubjectsWithAvaliableFilters(
                                                FFAppState()
                                                    .actualUser
                                                    .careerId,
                                                0,
                                                _model.yearFilter,
                                              );
                                              _model.listSubjects = _model
                                                  .filterOfYear1!
                                                  .map((e) => SubjectStruct
                                                      .maybeFromMap(e))
                                                  .withoutNulls
                                                  .toList()
                                                  .cast<SubjectStruct>();
                                              safeSetState(() {});
                                              _model.listUserSubjects = _model
                                                  .filterOfYearAndAlumn1!
                                                  .map((e) => SubjectStruct
                                                      .maybeFromMap(e))
                                                  .withoutNulls
                                                  .toList()
                                                  .cast<SubjectStruct>();
                                              safeSetState(() {});

                                              safeSetState(() {});
                                            },
                                            child: Text(
                                              'Year 4',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    font:
                                                        GoogleFonts.interTight(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                    color:
                                                        _model.yearFilter == 4
                                                            ? Colors.white
                                                            : Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .titleSmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ].divide(SizedBox(height: 12.0)),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Enrolled Subjects - Year ${_model.yearFilter?.toString()}',
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    font: GoogleFonts.interTight(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .fontStyle,
                                  ),
                            ),
                            Builder(
                              builder: (context) {
                                final listOfStudentSubject =
                                    _model.listUserSubjects.toList();

                                return ListView.separated(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: listOfStudentSubject.length,
                                  separatorBuilder: (_, __) =>
                                      SizedBox(height: 8.0),
                                  itemBuilder:
                                      (context, listOfStudentSubjectIndex) {
                                    final listOfStudentSubjectItem =
                                        listOfStudentSubject[
                                            listOfStudentSubjectIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        context.pushNamed(
                                          SubjectDetailsWidget.routeName,
                                          queryParameters: {
                                            'subject': serializeParam(
                                              listOfStudentSubjectItem,
                                              ParamType.DataStruct,
                                            ),
                                          }.withoutNulls,
                                        );
                                      },
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      listOfStudentSubjectItem
                                                          .name,
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            font: GoogleFonts
                                                                .interTight(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                            ),
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        listOfStudentSubjectItem
                                                            .desc,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodySmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Icon(
                                                Icons.chevron_right_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ].divide(SizedBox(height: 12.0)),
                        ),
                        Builder(
                          builder: (context) {
                            if (_model.userActualSubjects! < 10) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Available Subjects - Year ${_model.yearFilter?.toString()}',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          font: GoogleFonts.interTight(
                                            fontWeight: FontWeight.w600,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                  ),
                                  Builder(
                                    builder: (context) {
                                      final allsubjects =
                                          _model.listSubjects.toList();

                                      return ListView.separated(
                                        padding: EdgeInsets.zero,
                                        primary: false,
                                        shrinkWrap: true,
                                        scrollDirection: Axis.vertical,
                                        itemCount: allsubjects.length,
                                        separatorBuilder: (_, __) =>
                                            SizedBox(height: 8.0),
                                        itemBuilder:
                                            (context, allsubjectsIndex) {
                                          final allsubjectsItem =
                                              allsubjects[allsubjectsIndex];
                                          return Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          allsubjectsItem.name,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                font: GoogleFonts
                                                                    .interTight(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .fontStyle,
                                                                ),
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .fontStyle,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      4.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            allsubjectsItem
                                                                .desc,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  font:
                                                                      GoogleFonts
                                                                          .inter(
                                                                    fontWeight: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontWeight,
                                                                    fontStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .fontStyle,
                                                                  ),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmall
                                                                      .fontStyle,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  FFButtonWidget(
                                                    onPressed: () async {
                                                      _model.relationExits =
                                                          await actions
                                                              .getRelationSubjectAlumn(
                                                        FFAppState()
                                                            .actualUser
                                                            .id,
                                                        allsubjectsItem.id,
                                                      );
                                                      if (_model
                                                              .relationExits !=
                                                          null) {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title: Text(
                                                                  'ERROR:'),
                                                              content: Text(
                                                                  'Has intentado registrar un alumno en una asignatura a la que ya pertenece'),
                                                              actions: [
                                                                TextButton(
                                                                  onPressed: () =>
                                                                      Navigator.pop(
                                                                          alertDialogContext),
                                                                  child: Text(
                                                                      'Ok'),
                                                                ),
                                                              ],
                                                            );
                                                          },
                                                        );
                                                      } else {
                                                        await actions
                                                            .addUserToSubject(
                                                          FFAppState()
                                                              .actualUser
                                                              .id,
                                                          allsubjectsItem.id,
                                                        );

                                                        context.pushNamed(
                                                            AlumnSubjectsWidget
                                                                .routeName);
                                                      }

                                                      safeSetState(() {});
                                                    },
                                                    text: 'Enroll',
                                                    options: FFButtonOptions(
                                                      height: 32.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  16.0,
                                                                  0.0,
                                                                  16.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMedium
                                                              .override(
                                                                font:
                                                                    GoogleFonts
                                                                        .inter(
                                                                  fontWeight: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontWeight,
                                                                  fontStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .fontStyle,
                                                                ),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .info,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontWeight,
                                                                fontStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .fontStyle,
                                                              ),
                                                      elevation: 0.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  ),
                                ].divide(SizedBox(height: 12.0)),
                              );
                            } else {
                              return Padding(
                                padding: EdgeInsets.all(20.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(16.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.school_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 48.0,
                                        ),
                                        Text(
                                          'Enrollment Limit Reached',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.interTight(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Text(
                                          'You have enrolled in the maximum number of subjects (10/10). To enroll in new subjects, please unenroll from existing ones.',
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                font: GoogleFonts.inter(
                                                  fontWeight:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontWeight,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMedium
                                                          .fontStyle,
                                                ),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                letterSpacing: 0.0,
                                                fontWeight:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontWeight,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                      ].divide(SizedBox(height: 8.0)),
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ].divide(SizedBox(height: 16.0)),
                    ),
                  ),
                ),
              ].divide(SizedBox(height: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
