module.exports = (application) ->
  application.on application.launchEvent, (args) ->
    if args.android
      # For Android applications, args.android is an android.content.Intent class.
      console.log 'Launched Android application with the following intent: ' + args.android + '.'
    else if args.ios != undefined
      # For iOS applications, args.ios is NSDictionary (launchOptions).
      console.log 'Launched iOS application with options: ' + args.ios
  application.on application.suspendEvent, (args) ->
    if args.android
      # For Android applications, args.android is an android activity class.
      console.log 'Activity: ' + args.android
    else if args.ios
      # For iOS applications, args.ios is UIApplication.
      console.log 'UIApplication: ' + args.ios
  application.on application.resumeEvent, (args) ->
    if args.android
      # For Android applications, args.android is an android activity class.
      console.log 'Activity: ' + args.android
    else if args.ios
      # For iOS applications, args.ios is UIApplication.
      console.log 'UIApplication: ' + args.ios
  application.on application.exitEvent, (args) ->
    if args.android
      # For Android applications, args.android is an android activity class.
      console.log 'Activity: ' + args.android
    else if args.ios
      # For iOS applications, args.ios is UIApplication.
      console.log 'UIApplication: ' + args.ios
  application.on application.lowMemoryEvent, (args) ->
    if args.android
      # For Android applications, args.android is an android activity class.
      console.log 'Activity: ' + args.android
    else if args.ios
      # For iOS applications, args.ios is UIApplication.
      console.log 'UIApplication: ' + args.ios
  application.on application.uncaughtErrorEvent, (args) ->
    if args.android
      # For Android applications, args.android is an NativeScriptError.
      console.log 'NativeScriptError: ' + args.android
    else if args.ios
      # For iOS applications, args.ios is NativeScriptError.
      console.log 'NativeScriptError: ' + args.ios
  console.log JSON.stringify  application.onResume
  application
