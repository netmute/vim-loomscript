" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
  finish
endif
  let main_syntax = 'loomscript'
endif

" based on "ActionScript" VIM syntax by Abdul Qabiz (mail at abdulqabiz.com)

syn case ignore
syn match   loomScriptLineComment			"\/\/.*$"
syn match   loomScriptCommentSkip			"^[ \t]*\*\($\|[ \t]\+\)"
syn region  loomScriptCommentString			start=+"+  skip=+\\\\\|\\"+  end=+"+ end=+\*/+me=s-1,he=s-1 contains=loomScriptSpecial,loomScriptCommentSkip,@htmlPreproc
syn region  loomScriptComment2String			start=+"+  skip=+\\\\\|\\"+  end=+$\|"+  contains=loomScriptSpecial,@htmlPreproc
syn region  loomScriptComment				start="/\*"  end="\*/" contains=loomScriptCommentString,loomScriptCharacter,loomScriptNumber
syn match   loomScriptSpecial				"\\\d\d\d\|\\."
syn region  loomScriptStringD				start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=loomScriptSpecial,@htmlPreproc
syn region  loomScriptStringS				start=+'+  skip=+\\\\\|\\'+  end=+'+  contains=loomScriptSpecial,@htmlPreproc
syn match   loomScriptSpecialCharacter		"'\\.'"
syn match   loomScriptNumber				"-\=\<\d\+L\=\>\|0[xX][0-9a-fA-F]\+\>"
syn keyword loomScriptConditional			if else and or not
syn keyword loomScriptRepeat				do while for in
syn keyword loomScriptCase				break continue switch case default
syn keyword loomScriptConstructor			new
syn keyword loomScriptObjects				arguments Array Boolean Date _global Math Number Object String super var this Accessibility Color Key _level Mouse _root Selection Sound Stage System TextFormat LoadVars XML XMLSocket XMLNode LoadVars Button TextField TextSnapshot CustomActions Error ContextMenu ContextMenuItem NetConnection NetStream Video PrintJob MovieClipLoader StyleSheet Camera LocalConnection Microphone SharedObject MovieClip
syn keyword loomScriptStatement			return with
syn keyword loomScriptFunction			function on onClipEvent
syn keyword loomScriptValue				true false undefined null NaN void
syn keyword loomScriptArray				concat join length pop push reverse shift slice sort sortOn splice toString unshift
syn keyword loomScriptDate				getDate getDay getFullYear getHours getMilliseconds getMinutes getMonth getSeconds getTime getTimezoneOffset getUTCDate getUTCDay getUTCFullYear getUTCHours getUTCMilliseconds getUTCMinutes getUTCMonth getUTCSeconds getYear setDate setFullYear setHours setMilliseconds setMinutes setMonth setSeconds setTime setUTCDate setUTCFullYear setUTCHours setUTCMilliseconds setUTCMinutes setUTCMonth setUTCSeconds setYear UTC
syn keyword loomScriptMath				abs acos asin atan atan2 ceil cos E exp floor log LOG2E LOG10E LN2 LN10 max min PI pow random round sin sqrt SQRT1_2 SQRT2 tan -Infinity Infinity
syn keyword loomScriptNumberObj			MAX_VALUE MIN_VALUE NaN NEGATIVE_INFINITY POSITIVE_INFINITY valueOf
syn keyword loomScriptObject				addProperty __proto__ registerClass toString unwatch valueOf watch
syn keyword loomScriptString				charAt charCodeAt concat fromCharCode indexOf lastIndexOf length slice split substr substring toLowerCase toUpperCase add le lt gt ge eq ne chr mbchr mblength mbord mbsubstring ord
syn keyword loomScriptColor				getRGB getTransform setRGB setTransform
syn keyword loomScriptKey					addListener BACKSPACE CAPSLOCK CONTROL DELETEKEY DOWN END ENTER ESCAPE getAscii getCode HOME INSERT isDown isToggled LEFT onKeyDown onKeyUp PGDN PGUP removeListener RIGHT SHIFT SPACE TAB UP ALT
syn keyword loomScriptMouse				hide onMouseDown onMouseUp onMouseMove show onMouseWheel
syn keyword loomScriptSelection			getBeginIndex getCaretIndex getEndIndex getFocus setFocus setSelection
syn keyword loomScriptSound				attachSound duration getBytesLoaded getBytesTotal getPan getTransform getVolume loadSound onLoad onSoundComplete position setPan setTransform setVolume start stop onID3
syn keyword loomScriptStage				align height onResize scaleMode width
syn keyword loomScriptSystem				capabilities hasAudioEncoder hasAccessibility hasAudio hasMP3 language manufacturer os pixelAspectRatio screenColor screenDPI screenResolution.x screenResolution.y version hasVideoEncoder security useCodepage exactSettings hasEmbeddedVideo screenResolutionX screenResolutionY input isDebugger serverString hasPrinting playertype hasStreamingAudio hasScreenBroadcast hasScreenPlayback hasStreamingVideo avHardwareDisable localFileReadDisable windowlesDisable
syn keyword loomScriptTextFormat			align blockIndent bold bullet color font getTextExtent indent italic leading leftMargin rightMargin size tabStops target underline url
syn keyword loomScriptCommunication		contentType getBytesLoaded getBytesTotal load loaded onLoad send sendAndLoad toString	addRequestHeader fscommand MMExecute
syn keyword loomScriptXMLSocket			close connect onClose onConnect onData onXML
syn keyword loomScriptTextField			autoSize background backgroundColor border borderColor bottomScroll embedFonts _focusrect getDepth getFontList getNewTextFormat getTextFormat hscroll html htmlText maxChars maxhscroll maxscroll multiline onChanged onScroller onSetFocus _parent password _quality removeTextField replaceSel replaceText restrict selectable setNewTextFormat setTextFormat text textColor textHeight textWidth type variable wordWrap condenseWhite mouseWheelEnabled textFieldHeight textFieldWidth ascent descent
syn keyword loomScriptMethods				callee caller _alpha attachMovie beginFill beginGradientFill clear createEmptyMovieClip createTextField _currentframe curveTo _droptarget duplicateMovieClip enabled endFill focusEnabled _framesloaded getBounds globalToLocal gotoAndPlay gotoAndStop _height _highquality hitArea hitTest lineStyle lineTo loadMovie loadMovieNum loadVariables loadVariablesNum localToGlobal moveTo _name nextFrame onDragOut onDragOver onEnterFrame onKeyDown onKeyUp onKillFocus onMouseDown onMouseMove onMouseUp onPress onRelease onReleaseOutside onRollOut onRollOver onUnload play prevFrame removeMovieClip _rotation setMask _soundbuftime startDrag stopDrag swapDepths tabChildren tabIndex _target _totalframes trackAsMenu unloadMovie unloadMovieNum updateAfterEvent _url useHandCursor _visible _width _x _xmouse _xscale _y _ymouse _yscale tabEnabled asfunction call setInterval clearInterval setProperty stopAllSounds #initclip #endinitclip delete unescape escape eval apply prototype getProperty getTimer getURL getVersion ifFrameLoaded #include instanceof int new nextScene parseFloat parseInt prevScene print printAsBitmap printAsBitmapNum printNum scroll set targetPath tellTarget toggleHighQuality trace typeof isActive getInstanceAtDepth getNextHighestDepth getNextDepth getSWFVersion getTextSnapshot isFinite isNAN updateProperties _lockroot get install list uninstall showMenu onSelect builtInItems save zoom quality loop rewind forward_back customItems caption separatorBefore visible attachVideo bufferLength bufferTime currentFps onStatus pause seek setBuffertime smoothing time bytesLoaded bytesTotal addPage paperWidth paperHeight pageWidth pageHeight orientation loadClip unloadClip getProgress onLoadStart onLoadProgress onLoadComplete onLoadInit onLoadError styleSheet copy hideBuiltInItem transform activityLevel allowDomain allowInsecureDomain attachAudio bandwidth deblocking domain flush fps gain getLocal getRemote getSize index isConnected keyFrameInterval liveDelay loopback motionLevel motionTimeOut menu muted names onActivity onSync publish rate receiveAudio receiveVideo setFps setGain setKeyFrameInterval setLoopback setMode setMotionLevel setQuality setRate setSilenceLevel setUseEchoSuppression showSettings setClipboard silenceLevel silenceTimeOut useEchoSuppression
syn match   loomScriptBraces				"([{}])"
syn keyword loomScriptException 			try catch finally throw name message
syn keyword loomScriptXML					attributes childNodes cloneNode createElement createTextNode docTypeDecl status firstChild hasChildNodes lastChild insertBefore nextSibling nodeName nodeType nodeValue parentNode parseXML previousSibling removeNode xmlDecl ignoreWhite
syn keyword loomScriptArrayConstant 		CASEINSENSITIVE DESCENDING UNIQUESORT RETURNINDEXEDARRAY NUMERIC
syn keyword loomScriptStringConstant 		newline
syn keyword loomScriptEventConstant 		press release releaseOutside rollOver rollOut dragOver dragOut enterFrame unload mouseMove mouseDown mouseUp keyDown keyUp data
syn keyword loomScriptTextSnapshot 		getCount setSelected getSelected getText getSelectedText hitTestTextNearPos findText setSelectColor
syn keyword loomScriptID3 				id3 artist album songtitle year genre track comment COMM TALB TBPM TCOM TCON TCOP TDAT TDLY TENC TEXT TFLT TIME TIT1 TIT2 TIT3 TKEY TLAN TLEN TMED TOAL TOFN TOLY TOPE TORY TOWN TPE1 TPE2 TPE3 TPE4 TPOS TPUB TRCK TRDA TRSN TRSO TSIZ TSRX TSSE TYER WXXX
syn keyword loomScriptStyleSheet 			parse parseCSS getStyle setStyle getStyleNames
syn keyword loomScriptInclude #include #initClip #endInitClip include
syn keyword loomScriptAS3 				class extends public private static interface implements import dynamic protected

" catch errors caused by wrong parenthesis
syn match   loomScriptInParen     contained "[{}]"
syn region  loomScriptParen       transparent start="(" end=")" contains=loomScriptParen,loomScript.*
syn match   actionScrParenError  ")"

if main_syntax == "loomscript"
  syn sync ccomment loomScriptComment
endif

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_loomscript_syn_inits")
  if version < 508
    let did_loomscript_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink loomScriptComment		Comment
  HiLink loomScriptLineComment	Comment
  HiLink loomScriptSpecial		Special
  HiLink loomScriptStringS		String
  HiLink loomScriptStringD		String
  HiLink loomScriptCharacter		Character
  HiLink loomScriptSpecialCharacter	loomScriptSpecial
  HiLink loomScriptNumber		loomScriptValue
  HiLink loomScriptBraces		Function
  HiLink loomScriptError		Error
  HiLink actionScrParenError		loomScriptError
  HiLink loomScriptInParen		loomScriptError
  HiLink loomScriptConditional	Conditional
  HiLink loomScriptRepeat		Repeat
  HiLink loomScriptCase		Label
  HiLink loomScriptConstructor	Operator
  HiLink loomScriptObjects		Operator
  HiLink loomScriptStatement		Statement
  HiLink loomScriptFunction		Function
  HiLink loomScriptValue		Boolean
  HiLink loomScriptArray		Type
  HiLink loomScriptDate		Type
  HiLink loomScriptMath		Type
  HiLink loomScriptNumberObj		Type
  HiLink loomScriptObject		Function
  HiLink loomScriptString		Type
  HiLink loomScriptColor		Type
  HiLink loomScriptKey		Type
  HiLink loomScriptMouse		Type
  HiLink loomScriptSelection		Type
  HiLink loomScriptSound		Type
  HiLink loomScriptStage		Type
  HiLink loomScriptSystem		Type
  HiLink loomScriptTextFormat		Type
  HiLink loomScriptCommunication	Type
  HiLink loomScriptXMLSocket		Type
  HiLink loomScriptTextField		Type
  HiLink loomScriptMethods		Statement
  HiLink loomScriptException		Exception
  HiLink loomScriptXML			Type
  HiLink loomScriptArrayConstant	Constant
  HiLink loomScriptStringConstant	Constant
  HiLink loomScriptEventConstant	Constant
  HiLink loomScriptTextSnapshot	Type
  HiLink loomScriptID3			Type
  HiLink loomScriptStyleSheet		Type
  HiLink loomScriptInclude		Include
  HiLink loomScriptAS3		Function
  delcommand HiLink
endif

let b:current_syntax = "loomscript"
if main_syntax == 'loomscript'
  unlet main_syntax
endif
