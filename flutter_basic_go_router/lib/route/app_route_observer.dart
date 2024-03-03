

import 'package:flutter/material.dart';

/// Methods:
  /// RouteAware class gives the accompanying methods which we can expand:

  /// [didPop()]: In this method, when we pop the current screen, the didPop 
  /// method is called.
  /// [didPopNext()]: In this method, on the off chance that you have extended 
  /// HomePage with RouteAware, and in case SecondPage is popped so HomePage is noticeable now, didPopNext is called. As such, this strategy is considered when the top screen is popped off and the current screen is apparent.
  /// [didPush()]: In this method, this is called when the current screen or 
  /// route has been pushed into the navigation stack!
  /// [didPushNext()]: In this method, when we push SecondPage from HomePage, 
  /// didPushNext is called. In other words, this method is called when 
  /// a new screen/route is pushed from the current screen 
  /// and the current screen is no longer visible.

RouteObserver appRouteObserver = RouteObserver<ModalRoute>();