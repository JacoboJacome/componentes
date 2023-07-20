import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'boton_model.dart';
export 'boton_model.dart';

class BotonWidget extends StatefulWidget {
  const BotonWidget({
    Key? key,
    required this.width,
    required this.higth,
    required this.color,
    required this.hoverColor,
    required this.text,
    required this.icon,
    required this.borderColor,
    bool? rigthIcon,
    required this.startSpacing,
    required this.endSpacing,
    required this.centerSpacing,
    required this.textColor,
    required this.action,
    required this.hoverTextColor,
  })  : this.rigthIcon = rigthIcon ?? false,
        super(key: key);

  final int? width;
  final int? higth;
  final Color? color;
  final Color? hoverColor;
  final String? text;
  final Widget? icon;
  final Color? borderColor;
  final bool rigthIcon;
  final int? startSpacing;
  final int? endSpacing;
  final int? centerSpacing;
  final Color? textColor;
  final Future<dynamic> Function()? action;
  final Color? hoverTextColor;

  @override
  _BotonWidgetState createState() => _BotonWidgetState();
}

class _BotonWidgetState extends State<BotonWidget> {
  late BotonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotonModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.action?.call();
        },
        child: Container(
          width: widget.width?.toDouble(),
          height: widget.higth?.toDouble(),
          decoration: BoxDecoration(
            color: _model.hover! ? widget.hoverColor : widget.color,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: widget.borderColor!,
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!widget.rigthIcon) widget.icon!,
              Text(
                widget.text!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: _model.hover!
                          ? widget.hoverTextColor
                          : widget.textColor,
                    ),
              ),
              if (widget.rigthIcon) widget.icon!,
            ]
                .divide(SizedBox(width: widget.centerSpacing!.toDouble()))
                .addToStart(SizedBox(width: widget.startSpacing!.toDouble()))
                .addToEnd(SizedBox(width: widget.endSpacing!.toDouble())),
          ),
        ),
      ),
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
        setState(() {
          _model.hover = true;
        });
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
        setState(() {
          _model.hover = false;
        });
      }),
    );
  }
}
