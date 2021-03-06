initialization
initializeWidgets
	super initializeWidgets.
	self initializeSourceDirectory.
	projectNameLabel := self newLabel label: 'Project name'.
	projectNameInputText := self newTextInput
		placeholder: 'e.g., MyProject';
		autoAccept: true.
	projectNameInputText
		whenTextChangedDo: [ :text | projectLocation appendPath: text ].
	self focusOrder
		add: self projectNameInputText;
		add: self projectLocation;
		add: self subdirectoryInputText;
		add: self remoteInputText