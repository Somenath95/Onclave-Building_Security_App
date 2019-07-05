import 'package:flutter/material.dart';
// import 'package:gate_app/Screens/NoticeBoard.dart';

class AnimatedButton extends StatefulWidget {
  final String text;
  final ButtonStyle buttonStyle;
  final IconData iconData;
  final double iconSize;
  final Duration animationDuration;
  final MaterialPageRoute pageRoute;

  AnimatedButton({
    this.text,
    this.buttonStyle,
    this.iconData,
    this.iconSize,
    this.animationDuration,
    this.pageRoute,
  });

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton>
    with TickerProviderStateMixin {
  AnimationController _controller;
  ButtonState _currentState;

  @override
  void initState() {
    super.initState();
    _currentState = ButtonState.SHOW_ONLY_TEXT;
    _controller =
        AnimationController(vsync: this, duration: widget.animationDuration);
    double _controllerValue = _controller.value;
    if (_controllerValue < 0.5) {
      setState(() {
        _currentState = ButtonState.SHOW_ONLY_TEXT;
      });
    } else if (_controllerValue > 0.5) {
      setState(() {
        _currentState = ButtonState.SHOW_TEXT_ICON;
      });
    }
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.buttonStyle.elevation,
      borderRadius: BorderRadius.all(
        Radius.circular(
          widget.buttonStyle.borderRadius,
        ),
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _currentState = ButtonState.SHOW_TEXT_ICON;
          });
          Navigator.of(context).push(widget.pageRoute);
        },
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          height: widget.iconSize + 16.0,
          // width: 270.0,
          decoration: BoxDecoration(
            color: (_currentState == ButtonState.SHOW_TEXT_ICON)
                ? widget.buttonStyle.secondaryColor
                : widget.buttonStyle.primaryColor,
            border: Border.all(
                color: (_currentState == ButtonState.SHOW_TEXT_ICON)
                    ? widget.buttonStyle.primaryColor
                    : widget.buttonStyle.secondaryColor),
            borderRadius: BorderRadius.all(
                Radius.circular(widget.buttonStyle.borderRadius)),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 48.0,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              (_currentState == ButtonState.SHOW_TEXT_ICON)
                  ? Icon(
                      widget.iconData,
                      size: widget.iconSize,
                      color: widget.buttonStyle.primaryColor,
                    )
                  : Container(),
              SizedBox(
                width: 20.0,
              ),
              getTextWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget getTextWidget() {
    if (_currentState == ButtonState.SHOW_ONLY_TEXT) {
      return Text(
        widget.text,
        style: widget.buttonStyle.initialTextStyle,
      );
    } else {
      return Text(
        widget.text,
        style: widget.buttonStyle.finalTextStyle,
      );
    }
  }
}

class ButtonStyle {
  final TextStyle initialTextStyle, finalTextStyle;
  final Color primaryColor, secondaryColor;
  final double elevation, borderRadius;

  ButtonStyle({
    this.initialTextStyle,
    this.finalTextStyle,
    this.primaryColor,
    this.secondaryColor,
    this.elevation,
    this.borderRadius,
  });
}

enum ButtonState {
  SHOW_ONLY_TEXT,
  SHOW_TEXT_ICON,
}
