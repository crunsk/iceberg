"
I place item buttons at right.
"
Class {
	#name : #IceTipItemPositionRight,
	#superclass : #IceTipItemPosition,
	#category : #'Iceberg-TipUI-Spec-ItemBar'
}

{ #category : #'adding item' }
IceTipItemPositionRight >> add: aSpToolBarButton to: aSpToolBarPresenter [ 
	aSpToolBarPresenter addItemRight: aSpToolBarButton .
]

{ #category : #accessing }
IceTipItemPositionRight >> addItem: anObject into: aToolbar [
	aToolbar addItemRight: anObject
]
