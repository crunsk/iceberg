initialization
initializeCommitList
	commitList widget
		beResizable;
		addColumn:
			(IceTipTableColumn new
				id: 'Timestamp';
				action: [ :each | each timeStamp asLocalStringYMDHM ];
				width: 110 * World displayScaleFactor;
				yourself);
		addColumn:
			(IceTipTableColumn new
				id: 'Commit';
				action: #shortId;
				width: 60 * World displayScaleFactor;
				yourself);
		addColumn:
			(IceTipTableColumn new
				id: 'Author';
				action: #author;
				width: 150 * World displayScaleFactor;
				yourself);
		addColumn:
			(IceTipTableColumn new
				id: 'Description';
				action: #descriptionWithDecoration;
				yourself);
		dataSource: self newCommitsDataSource;
		selectIndex: 1